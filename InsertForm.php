<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\Connection;

class InsertForm extends Model
{
    public $name;
	  public $insert_units;
    public $verifyCode;
	
	  public $flag_message;
	
	  public $id_user;
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
			[['insert_units'], 'integer', 'min'=>0.01],
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
	
	public function insertUnits()
	{	
		//$date = date('Y-m-d H:i:s');
		
		//1. Insert units
		$customer = new user_information();
		$customer->user_name = $this->name;
		$customer->user_units_returned = $this->insert_units;
		
		$id_user = $customer->user_id;
		$customer->save();
			
		
		$connection = \Yii::$app->db;
		
		$command = $connection->createCommand('call Prorate(:_insert_units)');
		$command->bindParam(':_insert_units',$this->insert_units);
		$command->execute();
		$command = $connection->createCommand('call SetNumProrates()');
		$command->execute();
		$command = $connection->createCommand('call InsertProcess()');
		$command->execute();
		
		//Find users profits and put active_users = 0
		//might have a bug when there is no rows returned
		//$command = $connection->createCommand('call FindUserProfit()');
		//$command->execute();
		
		//CB information
		$command = $connection->createCommand('SELECT cb_id FROM cb_information ORDER BY cb_id DESC limit 1');
		$cb_id = $command->queryScalar();
		$command->execute();
		//table cb_information id has to be setted property before call the procedure
		$command = $connection->createCommand('call SetCBProrates(:_cbid)');
		$command->bindParam(':_cbid',$this->cb_id);
		$command->execute();
		
		$this->flag_message = 'Success';
		
		
	}//end function
	
	
}//end class
