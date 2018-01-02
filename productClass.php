<?php
include_once("connection.php");

	class product {

		var $intProductID;
		var $strProductName;
		var $strProductManufacturer;
		var $strProductPrice;
		var $intProductQuantity;	
		//var $arrProducts;

		// constructor with an empty default parameter
		public function __construct($intProductID = ""){ 
			$this->intProductID = $intProductID;
		}

		public function getProductByID($intProductID){
			$arrReturn = array();
			global $connection;

			$strSQL = "SELECT * FROM tblProduct
						WHERE ProductID = ". $intProductID;

			$rsResult = mysqli_query($connection, $strSQL);

			while($arrRow = mysqli_fetch_assoc($rsResult)){
				$arrReturn[$arrRow["ProductID"]] = $arrRow;
			}

			return $arrReturn;			
		}

		public function deleteProduct(){
			global $connection;

			$strSQL = "DELETE FROM tblProduct WHERE ProductID = $this->intProductID";

			$rsResult = mysqli_query($connection, $strSQL);

			//echo "Query: ". $strSQL;
		}

		public function getAllProducts(){
			$arrReturn = array();
			global $connection;

			$strSQL = "SELECT * FROM tblProduct";

			$rsResult = mysqli_query($connection, $strSQL);

			while($arrRow = mysqli_fetch_assoc($rsResult)){
				$arrReturn[$arrRow["ProductID"]] = $arrRow;
			}

			return $arrReturn;		
		}

		public function setProductName($strName){
			$this->strProductName = $strName;
		}

		public function setProductManufacturer($strManufacturer){
			$this->strProductManufacturer = $strManufacturer;
		}

		public function setProductPrice($strProductPrice){
			if($strProductPrice[0] == "$"){
				$this->strProductPrice = substr($strProductPrice, 1);
			}
			else{
				$this->strProductPrice = $strProductPrice;
			}	
		}

		public function setProductQuantity($intQuantity){
			$this->intProductQuantity = $intQuantity;
		}

		public function getProductName(){
			return ($this->strProductName);
		}

		public function getProductManufacturer(){
			return ($this->strProductManufacturer);
		}

		public function getProductPrice(){
			return ($this->strProductPrice);
		} 

		public function getProductQuantity(){
			return ($this->intProductQuantity);
		}

		public function insertProduct(){
			global $connection;
			$strProductName = $this->getProductName();
			$strManufacturer = $this->getProductManufacturer();
			$strProductPrice = $this->getProductPrice();
			$intQuantity = $this->getProductQuantity();

			$strSQL = "INSERT INTO tblProduct
						(ProductName, ProductManufacturer, ProductPrice, ProductQuantityInStore)	
						VALUES ('$strProductName', '$strManufacturer', '$strProductPrice', '$intQuantity')";

			$rsResult = mysqli_query($connection, $strSQL);	

			// if($rsResult){
			// 	echo "Product successfully Created";
			// }
		}
		public function updateProducts($arrProductsToUpdate){
			global $connection;
			$arrOldProducts = $this->getAllProducts();
			//var_dump($arrProductsToUpdate);

			foreach ($arrProductsToUpdate as $intProductID => $arrElements) {
				foreach ($arrElements as $strCol => $strValue) {
					switch ($strCol) {
						case 'ProductName': 
							$this->setProductName($strValue);
							break;

						case 'ProductManufacturer': 
							$this->setProductManufacturer($strValue);
							break;

						case 'ProductPrice': 
							//echo "case Price"; 	
							$this->setProductPrice($strValue);
							break;

						case 'ProductQuantityInStore':
							//echo "case Quantity"; 
							$this->setProductQuantity($strValue);
							break;		

						default:
							# code...
							break;
					}
				}

				$strSQL = "Update tblProduct
							SET ProductName = '".$this->getProductName()."',"." ProductManufacturer = '".$this->getProductManufacturer()."',".
							" ProductPrice = '".$this->getProductPrice()."',"." ProductQuantityInStore = '".$this->getProductQuantity()."'
							 WHERE ProductID = '$intProductID' ";
				$rsResult = mysqli_query($connection, $strSQL);	
				//echo " Query: ". $strSQL;
			}
			// if($rsResult){
			// 	echo "records updated ...";
			// }		
			
		}

	}




?>