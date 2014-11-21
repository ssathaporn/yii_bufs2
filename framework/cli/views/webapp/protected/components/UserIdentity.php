<?php
class UserIdentity extends CUserIdentity {
    
    private $_id;

    public function authenticate() {
        $user = Users::model()->findByAttributes(array('username' => $this->username));
        
        if($user === null){ // No user found!!
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if($user->password !== $this->password){ // Invalid password !!
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        }  else { // Okey!
            $this->errorCode = self::ERROR_NONE;
            $this->_id = $user->id;
            $this->setState('id_user', $user-id);
        }
    }
    
    public function getId(){
        return $this->_id;
    }

}
