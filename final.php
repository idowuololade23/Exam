<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>
<style>
	.starttest a{
		font-family: "Times New Roman", Georgia, Serif;
		font-size: 25px;
		color:#121069;
	}
</style>
<div class="main">
<h1>You are Done    !</h1>
	<div class="starttest">
	<p>Congratulations ! You Have Just Completed The Exam.</p>
	<p>Final Score : 
		<?php

			if(isset($_SESSION['score'])){
				$con = mysqli_connect('localhost', 'root', '', 'examination');
				$sql = "insert into tbl_result(user_id,score) values('12','".$_SESSION['score']."')";
				//echo $sql;
				$query = mysqli_query($con, $sql);
				if(!$query){
					echo mysqli_error($con);
				}
				echo $_SESSION['score'];
				unset($_SESSION['score']);
			}
		?>
	</p>
	<!-- <a href="viewans.php">View Correct Answer</a>
	<a href="starttest.php">Again Start Test!!!!</a> -->
	</div>
  </div>
<?php include 'inc/footer.php'; ?>