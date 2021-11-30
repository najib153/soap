<?php
  
   class server
   {
       Private $conn;
       
       Public static function authenticate($header_params)
          {
              if ($header_params->username == 'najib' && $header_params->password =='root') return true ;
                else throw new SOAPFault('  wrong User / Password combination ' , 401) ;
          }
    
       public function __construct()
       { 
         $this->conn = (is_null($this->conn)) ? self::connect() : $this->conn;
       } 
        static function connect()
        {
         $conn = mysqli_connect('localhost','root','root','userlogin');
         return $conn;
        }

       public function getStudentName($id_array)
       {    

          
         //$mysqli = new mysqli("localhost","root","root","userlogin");
         $conn = mysqli_connect('localhost','root','root','userlogin');

        // Check connection
        //if ($mysqli -> connect_errno) {
        //echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
        //exit();
        

        // Perform query
        //if ($result = $mysqli->query("SELECT nom FROM soap WHERE id = 3 ")) {
        //echo "Returned rows are: " . $result -> num_rows;
        // Free result set
        //$mysqli -> close();  
        //return $result ;
       //}

              
         //$id  = $id_array['id'];
         
         $sql = "SELECT nom FROM soap WHERE id = 2 " ;
         $qry = mysqli_query($sql, $conn);
         $res = mysqli_fetch_array($qry);
        //  $conn->close(); 
         return $res[0];
          
        }
        

   }
    
    $params = array('uri'=>'soap/server.php');
    $server = new SoapServer(Null, $params);
    $server -> setClass('server');
    $server -> handle();
?>
