<!DOCTYPE html>
<html lang=en>

<head>
	<meta charset=utf-8" />
	<title>Red Blog Theme - Free CSS Templates</title>
	<meta name="keywords" content="Red Blog Theme, Free CSS Templates" />
	<meta name="description" content="Red Blog Theme - Free CSS Templates by templatemo.com" />
	<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>


<body>
<div id="templatemo_top_wrapper">
    <div id="templatemo_top">
    
        <div id="templatemo_menu">
                    
            <!--ul>
                <li><a href="#" class="current">Home</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul-->
			
			<ul>
				<li><a href="index.php" class="current">Home</a></li>
			<?php
			foreach($mycms->showMenu("menu") as $m)
			{
				extract($m)
				?>
				<li><a href="#"><?php echo $name; ?></a></li>
				<?php
			}
			?>
			</ul>
			
			
			
			
			
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="twitter">
            <a href="#">follow us <br />
            on twitter</a>
        </div>
        
  </div>
</div>


