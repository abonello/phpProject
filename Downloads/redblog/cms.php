<?php
class cms
{
	public $conn;
	
	public function __construct()
	{				
		$this->conn= mysqli_connect("localhost","root","","cms");
									/*host,user,password,database*/
	}
	
	public function showMenu($table)
	{
		/*this method return all record which status is Publish from the table name that we pass as parameter*/
		
		$query = mysqli_query($this->conn,"SELECT * FROM $table WHERE status='Publish'");
		return mysqli_fetch_all($query,MYSQLI_ASSOC);				
	}
	
	
}

$mycms = new cms;

?>