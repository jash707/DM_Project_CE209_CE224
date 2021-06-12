<?php
    require 'db.php';

    $id = $_GET['tuid'];
    if(isset($_POST['delete'])){
        $exec = mysqli_query($con,"update takeaway_user set status = 1 where tuid = $id");
    if($exec){
			echo'<script>alert("Deleted!") </script>';
	header("location:view_takeaway_order.php");}    
    }
    if(isset($_POST['cancel'])){
        header("location:view_takeaway_order.php");
    }
?>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="/images/favicon-icon.png" type="image/x-icon">
        <link rel="apple-touch-icon" href="/images/apple-touch-icon.png">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" src="extensions/fixed-columns/bootstrap-table-fixed-columns.css">
        <link rel="stylesheet" href= "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"		integrity= "sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" /> 
    	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"			integrity= "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"	crossorigin="anonymous"> 
    	</script> 
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"> 
    	</script> 
    	<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity= "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"	crossorigin="anonymous"> </script>
        <script src="extensions/fixed-columns/bootstrap-table-fixed-columns.js"></script>
        <style>
			@import url('https://fonts.googleapis.com/css?family=Titillium+Web');
			.nav{
				background-color: blue;
				color: white;
				font-size: 24px;
				width: 100%;
			}
			.nav a{
				color: white;
				font-size: 24px;
				text-decoration: none;
				padding : 10px;
			}
        	*{
            	font-family: 'Titillium Web', sans-serif;
        	}
			table, th, tr, td{
				text-align: center;
				padding: 5px;
				border-collapse : collapse;
			}
			table tr{
			    overflow: scroll;
			}
			table th{
				background-color: #efefef;
			}
			h1{
				text-align: center;
			}
			a{
				text-decoration: none;
			}
            a :: hover{
                text-decoration: underline;
            }
            
            h2{
                padding: 10px;
                text-align: center;
            }
            .empty{
                padding: 10px;
            }
            .src{
                text-align: center;
                padding: 10px; 
            }
        </style>
    </head>
    <body>
        <h2>Are You Sure You Want To Cancel This Order?</h2>
        <div class="table-responsive">
            <form method="post" action="#">
                <table class="table">
                      <thead>
                          <tr> 
                                <th>No</th>
                                <th>Name </th>
                                <th>E-Mail </th>
                                <th>Mobile</th>
                                <th>Date </th>
                                <th>Pickup Time</th>
                                <th>Total Bill</th>
                                <th>Payment Mode</th>
                                <th>View Order </th>
                            </tr>
                            <?php   
                                $exec = mysqli_query($con,"select * from takeaway_user where tuid = $id");
                                while($r = mysqli_fetch_array($exec))
                                {
                                    $tid = $r['tuid'];
                            ?>
                            <tr>
                                <td><?php echo $r['tuid']; ?></td>
                                <td><?php echo $r['name']; ?></td>
                                <td><?php echo $r['email']; ?></td>
                                <td><?php echo $r['mobile_no']; ?></td>
                                <td><?php echo date('d/m/Y',strtotime($r['date_time'])); ?></td>
                                <td><?php echo date('h:i:s a',strtotime($r['time_of_delivery'])); ?></td>
                                <td><?php echo $r['total_bill']; ?></td>
                                <td><?php echo $r['payment_mode']; ?></td>
                                <td><a href="view_order_details.php?tuid=<?php echo $r['tuid']; ?>" > View </a></td>
                            </tr>
                        <?php
                            }
                        ?>
                        </tbody>
                </table>
                <button  style="margin-left: 40%; background-color: #f21f13; color: white;" type="submit" name="delete"   class="btn btn-primary"> Delete </button>
               <form method="post" action="#">
                   <button  style="margin-left: 40%;" type="submit" name="cancel"   class="btn btn-primary"> Cancel </button>
               </form>
            </form>
    </body>
</html>
