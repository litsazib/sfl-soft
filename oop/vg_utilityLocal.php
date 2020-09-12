<?php 


class Connection {

    protected $host = "localhost";
    protected $dbname = "codingav_sfl";
    protected $user = "root";
    protected $pass = "root";
    protected $DBH;

    function __construct() {
 if(i_key!='solaimanfeedsltd@gmail.com'){exit();}
        try {

            $this->DBH = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->user, $this->pass);
			
        }
        catch (PDOException $e) {

            echo $e->getMessage();
            exit(0);
        }
    }

    public function closeConnection() {

        $this->DBH = null;
    }
}




?>