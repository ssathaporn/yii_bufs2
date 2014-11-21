<?php

class LoginForm extends CFormModel {

    public $username;
    public $password;
    private $_identity;

    public function rules() {
        return array(
            array('username, password', 'required'),
            array('password', 'authenticate'),
        );
    }

    /**
     * Declares attribute labels.
     */
    public function attributeLabels() {
        return array(
            'username' => 'Username',
            'password' => 'Password'
        );
    }

    /**
     * Authenticates the password.
     * This is the 'authenticate' validator as declared in rules().
     */
    public function authenticate($attribute, $params) {
        $this->_identity = new UserIdentity($this->username, $this->password);
        if (!$this->_identity->authenticate())
            $this->addError('password', 'Incorrect username or password.');
    }

    /**
     * Logs in the user using the given username and password in the model.
     * @return boolean whether login is successful
     */
    public function login() {
        if ($this->_identity === null) {
            $this->_identity = new UserIdentity($this->username, $this->password);
            $this->_identity->authenticate();
        }
        if ($this->_identity->errorCode === UserIdentity::ERROR_NONE) {
            // $duration = $this->rememberMe ? 3600 * 24 * 30 : 0; // 30 days
            Yii::app()->user->login($this->_identity);
            return true;
        } else
            return false;
    }

}
