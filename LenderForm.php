<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\Connection;

class LenderForm extends Model
{
  public $name;
  public $lender_units;
  public $lender_limit_profits;
  public $verifyCode;
	
  public $prorates;
	
  public $id_user;
  public $lower;
  public $weight;
  public $units_ready;
  public $available_units;
  public $units_for_borrow;
  public $cb_id_borrow;


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
			[['lender_units'], 'integer', 'min'=>0.01],
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
	
	public function insertLender()
	{	
		//$date = date('Y-m-d H:i:s');
		
		//1. Insert lender information
		$customer = new user_information();
		$customer->user_name = $this->name;
		$customer->user_is_borrower = 0;
		$customer->user_active = 1;
		$customer->user_units_invested = $this->lender_units;
		$customer->user_statement_of_account = $this->lender_units;
		//$customer->user_units_ready_to_borrow = $this->lender_units;
		
		$id_user = $customer->user_id;
		$customer->save();
		
		$connection = \Yii::$app->db;
		//Find the last record of the table
		$command = $connection->createCommand('SELECT user_id FROM user_information ORDER BY user_id desc limit 1');
		$id_user = $command->queryScalar();
		//2.
		$command = $connection->createCommand('call CalculateLowerLimit(:_id)');
		$command->bindParam(':_id',$id_user);
		$command->execute();
		$command = $connection->createCommand('SELECT user_lower_limit_profit FROM user_information WHERE user_id =:_id');
		$command->bindParam(':_id',$id_user);
		$this->lower = $command->queryScalar();
		$command->execute();
		
		$command = $connection->createCommand('call CalculateWeight()');
		$command->execute();
		$command = $connection->createCommand('SELECT user_weight FROM user_information WHERE user_id =:_id');
		$command->bindParam(':_id',$id_user);
		$this->weight = $command->queryScalar();
		$command->execute();
		
		$command = $connection->createCommand('call UnitsAvailableToBorrow(:_id)');
		$command->bindParam(':_id',$id_user);		
		$command->execute();
		$command = $connection->createCommand('SELECT user_available_units FROM user_information WHERE user_id =:_id');
		$command->bindParam(':_id',$id_user);
		$this->available_units = $command->queryScalar();
		$command->execute();
		
		//5.
		//$command = $connection->createCommand('call UpdateLenderStatementAccount(:_id)');
		//$command->bindParam(':_id',$id_user);
		//$command->execute();
		
		//update units information in cb_information table for borrow
		$command = $connection->createCommand('SELECT cb_units_for_borrow FROM cb_information 
							ORDER BY cb_id DESC limit 1');
		$units_for_borrow = $command->queryScalar();
		$command->execute();
		$command = $connection->createCommand('SELECT cb_id FROM cb_information 
							ORDER BY cb_id DESC limit 1');
		$cb_id_borrow = $command->queryScalar();
		$command->execute();
		
	
	}
		
	
}//end class
