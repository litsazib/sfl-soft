<?php 


class Connection {

  protected $host ="localhost";
  protected $dbname ="solaiman_soft";
  protected $user ="solaiman_soft";
  protected $pass ="-I1oe^a4r+PH";
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