<?php
   class client
   {
       public function __construct()
       { 
          $params = array('location'=>'http://localhost/soap/server.php',
          'uri'=> 'urn://soap/server.php', 'trace'=> 1);

          $this->instance = new soapClient(NULL, $params);

          $auth_params = new stdClass();
          $auth_params -> username = 'najib';
          $auth_params -> password = 'root';

          $header_params = new SoapVar($auth_params , SOAP_ENC_OBJECT);
          $header = new SoapHeader('codev' , 'authenticate' , $header_params, false);

          $this->instance-> __setsoapHeaders(array($header));

       }
       public function getName($id_array)
       { 
           return $this->instance -> __soapCall('getStudentName',$id_array);
       }

   }
    
    $client = new client;
?>