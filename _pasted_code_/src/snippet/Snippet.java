package snippet;

public class Snippet {
	<div class="contailer">
	        <div class="row" style="margin-top:150px;">
	            <div class="col-md-3 col-md-offset-4" style="border-radius: 25px 25px 25px 25px;
	-moz-border-radius: 25px 25px 25px 25px;
	-webkit-border-radius: 25px 25px 25px 25px;
	border: 7px double #000000; -webkit-box-shadow: 20px 20px 40px 6px rgba(0,0,0,0.6);
	-moz-box-shadow: 20px 20px 40px 6px rgba(0,0,0,0.6);
	box-shadow: 20px 20px 40px 6px rgba(0,0,0,0.6); margin-left:750px">
	    <?php
	    $query="select * from product";
	    $run=mysqli_query($con,$query);
	    ?>
	    <form action="" method="post" style="font-family:Verdana;">
	    <h1>Order</h1>
	    <br>
	    <label for="">Username:</label>
	            <input type="text" readonly name="user" class="form-control" id="" value=<?php echo $user;?>>
	            <br><br>
	            <label for="">Select Product:</label>
	        <select name="productname" id="" class="form-control" onchange="this.form.submit()">
	            <option value="">Select Product</option>
	            <?php
	            while($data=mysqli_fetch_array($run))
	            {
	                echo "<option value='$data[1]'>$data[1]</option>";
	            }
	            ?>
	        </select>
	        <br><br>
	        <?php
	        if(isset($_POST['productname']))
	        {
	            $product=$_POST['productname'];
	
	            $query1="select * from product where Pname='$product'";
	            $run1=mysqli_query($con,$query1);
	            $data2=mysqli_fetch_array($run1);
	            ?>
	            
	            <label for="">Product:</label>
	            <input type="text" readonly name="pname" class="form-control" id="" required value=<?php echo $data2[1];?>>
	            <br><br>
	            <label for="">Amount:</label>
	            <input type="number" readonly name="amount" class="form-control" id="" value=<?php echo $data2[2];?> required>
	            <br><br>
	            <label for="">Quantity:</label>
	            <input type="number" name="quantity" class="form-control" id="" required>
	            <br><br>
	            <!-- <input type="date" name="date" class="form-control" id="" required value=<?php echo date('d-m-y');?>>
	            <br><br> -->
	            <a href="Main.html" class="btn btn-primary">Back</a>
	            <input type="submit" value="Order" name="orderbtn" class="btn btn-info">
	            <a href="ShoppingCart.php" class="btn btn-success">Move To Cart</a>
	            <br><br>
	            <?php
	        }
	        ?>
	    </form>
	    </div>
	    </div>
	    </div>
}

