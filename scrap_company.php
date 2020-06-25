<?php 

  /* include library file */
  require_once "simplehtmldom_1_9_1/simple_html_dom.php";
  include_once 'connection.php';

  $industry_type =$_GET['ind_type'];
  $scrap_id =$_GET['id'];
  /* get html content from the site. */
  $dom = file_get_html("http://www.mycorporateinfo.com".$industry_type."", false);
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
  		$company_list = "";
  		foreach($dom->find(".table") as $company_list) 
  		{
  				$answer[].= $company_list;
  				$query = mysqli_query($con,"INSERT INTO tbl_scrap_company (scrap_id,scrap_comany_data) VALUES ('".$scrap_id."','".$company_list."')");
  		        if (!$query) {
  		            die(mysqli_error($con));
  		        }
  		}
  	}

  	$fetch_sql = "SELECT A.scrap_comany_data,A.scrap_company_id,B.scrap_data FROM `tbl_scrap_company` AS A ,tbl_scraping_data AS B WHERE A.scrap_id=B.scrap_id";
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
          	<th>Id</th>
            <th>Industry Name</th>
            <th>Company List</th>
          </tr>
        </thead>
        <?php     
           while( $row = mysqli_fetch_assoc($res)) {
          
            
              echo "<tr class='list'>
              			<td>".$row['scrap_company_id']."</td>
                  	<td>".$row['scrap_data']."</td>
                    <td>".$row['scrap_comany_data']."</td>
                	</tr>";      
         }
        ?>
      </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript">
  $( ".list tr" ).click(function() {
    var cr= $(this).closest(".table .table-bordered tr");
    var href = cr.find("a").attr("href");
    var cname = cr.find("a").text();
    window.open("scrap_company_info.php?company_name="+cname+"&info_type="+href);
  });

</script>