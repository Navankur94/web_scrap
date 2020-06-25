<?php 

  /* include library file */
  require_once "simplehtmldom_1_9_1/simple_html_dom.php";
  include_once 'connection.php';

  $info_type =$_GET['info_type'];
  $company_name=$_GET['company_name'];
  /* get html content from the site. */
  $dom = file_get_html("http://www.mycorporateinfo.com".$info_type."", false);
  /* collect all Industry companies into an array */
  $answer = array();
  if (!$con) {
  	echo mysqli_error($con);
      die("Connection Error");
  }
  else
  {
  	if(!empty($dom)) 
  	{
  		$company_info = "";
  		foreach($dom->find(".roomy-20") as $company_info) 
  		{
        echo $company_info;
  				$answer[].= $company_info;
  				$query = mysqli_query($con,"INSERT INTO tbl_scrap_company_info (scrap_info_data,company_name) VALUES ('".$company_info."','".$company_name."')");
  		        if (!$query) {
  		            die(mysqli_error($con));
  		        }
  		}
  	}

  	$fetch_sql = "SELECT scrap_info_data,scrap_company_info_id,company_name FROM `tbl_scrap_company_info`";
  	$res=mysqli_query($con,$fetch_sql);
  }
?>
<style>
#companies {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;

}

#companies td, #companies th {
  border: 1px solid #ddd;
  padding: 8px;
}

#companies tr:nth-child(even){background-color: #f2f2f2;}

#companies tr:hover {background-color: #ddd;}

#companies th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
 <div class="row col-md-12" align="center">
      <table class="table" id="companies">
        <thead>
          <tr>
          	<th>Info Id</th>
            <th>Company Name</th>
            <th>Info </th>
          </tr>
        </thead>
        <?php     
           while( $row = mysqli_fetch_assoc($res)) {
          
            
              echo "<tr class='list'>
              			<td>".$row['scrap_company_info_id']."</td>
                    <td>".$row['company_name']."</td>
                    <td>".$row['scrap_info_data']."</td>
                	</tr>";      
         }
        ?>
      </table>
</div> 
