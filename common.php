<?php // common file that holds all common functionalities for different pages
include("connection.php");
include("productClass.php");



function loadAllProducts(){
	$objProduct = new product();
	return ($objProduct->getAllProducts());
}

function updateProductInfo($arrItemsToUpdates){
	$objProduct = new product();
	$objProduct->updateProducts($arrItemsToUpdates);
	//return ($objProduct->getAllProducts());
}

function saveProduct($arrPost){
	$objProduct = new product();
	$objProduct->setProductName($arrPost["strProductName"]);
	$objProduct->setProductPrice($arrPost["strProductPrice"]);
	$objProduct->setProductQuantity($arrPost["strQuantity"]);
	$objProduct->setProductManufacturer($arrPost["strProductManufacturer"]);
	$objProduct->insertProduct();
}

function deleteProduct($intProductID){
	$objProduct = new product($intProductID);
	$objProduct->deleteProduct();
}
?>