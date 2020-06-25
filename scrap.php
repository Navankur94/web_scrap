<?php 

/* include library file */
require_once "simplehtmldom_1_9_1/simple_html_dom.php";
include_once 'connection.php';

/* get html content from the site. */
$dom = file_get_html("http://www.mycorporateinfo.com/industry", false);
/* collect all Industry Data into an array */
$answer = array();
if (!$con) {
	echo mysqli_error($con);
    die("Connection Error");
}
else{
	if(!empty($dom)) 
	{
		$divClass = $industry_list = "";
		foreach($dom->find(".roomy-40") as $divClass) 
		{
			foreach($divClass->find('.list-group .list-group-item a') as $industry_list) 
			{
			   //echo $industry_list;
				$answer[].= $industry_list;
				/*$query = mysqli_query($con,"INSERT INTO tbl_scraping_data (scrap_data) VALUES ('".$industry_list."')");
		        if (!$query) {
		            die(mysqli_error($con));
		        }*/
			}
		}
	}
	/*$industry_data = json_encode($answer,true);*/
	//print_r(json_decode($industry_data));
	$fetch_sql = "SELECT * FROM `tbl_scraping_data`";
	$res=mysqli_query($con,$fetch_sql);
}
?>
<style>
#industry {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;

}

#industry td, #industry th {
  border: 1px solid #ddd;
  padding: 8px;
}

#industry tr:nth-child(even){background-color: #f2f2f2;}

#industry tr:hover {background-color: #ddd;}

#industry th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<div class="row col-md-12" align="center">
      <table class="table" id="industry">
        <thead>
          <tr>
          	<th>Id</th>
            <th>Industry List</th>
          </tr>
        </thead>
        <?php     
           while( $row = mysqli_fetch_assoc($res)) {
          
            
              echo "<tr>
              			<td value='".$row['scrap_id']."'>".$row['scrap_id']."</td>
                  		<td class='something'>".$row['scrap_data']."</td>
                	</tr>";      
         }
        ?>
      </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$( "tr" ).click(function() {
		var currentRow=$(this).closest("tr");
		var id=currentRow.find("td:eq(0)").text()
		
    	var href = $(this).find("a").attr("href");
    	window.open("scrap_company.php?ind_type="+href+"&id="+id);
	});

</script>