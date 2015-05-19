<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\Connection;

class BorrowerForm extends Model
{
   public $name;
   public $borrower_units;
   public $lender_limit_profits;
   public $verifyCode;
	
   public $prorates;
	
   public $id_user;
   public $lower;
   public $weight;
   public $units_ready;
   public $available_units; 
   public $flag_message;
   public $can_borrow;
   public $safety_units;
   public $can_borrow_now;
   public $can_borrow_init;
	
   public $cb_id;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // name, email, subject and body are required
            [['name'], 'required'],
            // email has to be a valid email address
            //['email'],
	    //[['lender'], 'boolean'],
	    [['borrower_units'], 'integer', 'min'=>0.01],
            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Verification Code',
        ];
    }
		
	public function insertBorrower()
	{	
		//$date = date('Y-m-d H:i:s');
		
		//1. Insert lender information
		$customer = new user_information();
		$customer->user_name = $this->name;
		$customer->user_is_borrower = 1;
		$customer->user_active = 1;
		$customer->user_units_borrowed = $this->borrower_units;
		$customer->user_statement_of_account = ($this->borrower_units)*-1;
		
		$customer->save();
		
		$id_user = $customer->user_id;
		
		$connection = \Yii::$app->db;
		
		//check if there is profit to set user_active = 0
		$command = $connection->createCommand('call FindUserProfit()');
		$command->execute();
		
		//check user_available_units > 0
		$command = $connection->createCommand('call UnitsCanBorrow()');
		$command->execute();
		
		//$command = $connection->createCommand('SELECT cb_units_for_borrow FROM cb_information 
							  //ORDER BY cb_id  DESC');
													
		$command = $connection->createCommand('SELECT SUM(user_available_units) 
							FROM user_information 
							   WHERE user_is_borrower = 0 AND user_active = 1');
		$can_borrow_now = $command->queryScalar();
		$command->execute();
		
		$cb = new cb_information();
		$cb->cb_units_for_borrow = $can_borrow_now;
		$cb->save();
		
		$command = $connection->createCommand('SELECT cb_units_for_borrow 
							FROM cb_information 
								ORDER BY cb_id DESC limit 1');
		$can_borrow = $command->queryScalar();
		$command->execute();
		
		//Safety fund of 16%
		$safety_units = (($can_borrow * 16)/100); 
		//$can_borrow = $can_borrow - $safety_units;
		$cb->cb_safety_units = $safety_units;
		$cb->save();
	
		
		if ($this->borrower_units < $can_borrow)
		{
			
			$cb->cb_units_for_borrow = $can_borrow - $this->borrower_units;
			$cb->save();
			
			$can_borrow_now = $can_borrow - $this->borrower_units;
			$command = $connection->createCommand('call Prorate(:_units_borrow)');
			$command->bindParam(':_units_borrow',$this->borrower_units);
			$command->execute();
			$command = $connection->createCommand('call SetNumProrates()');
			$command->execute();
			$command = $connection->createCommand('call UpdateLenderStatementAccount()');
			$command->execute();
			$this->flag_message = 'Success';
			
			//CB information
			$command = $connection->createCommand('SELECT cb_id FROM cb_information 
									ORDER BY cb_id DESC limit 1');
			$cb_id = $command->queryScalar();
			$command->execute();
			$command = $connection->createCommand('call SetCBProrates(:_cbid)');
			$command->bindParam(':_cbid',$this->cb_id);
			$command->execute();
			
		}
		else
		{
			$this->flag_message = 'Not enough units to borrow';
		}
	
		
	}
	
	
}//end class
