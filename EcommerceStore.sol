pragma solidity ^0.4.23;

contract EcommerceStore {
    enum ProductCondition {New,Used}
    uint public productIndex;
    struct Product 
    {
        uint id;
        string name;
        string category;
        string imageLink;
        string descLink;
        uint startTime;
        uint price;
        ProductCondition condition;
        address buyer;
    }
    mapping( address => mapping( uint => Product ) )stores;
    mapping(uint => address)productIdInStore;
    constructor () public {
        productIndex = 0;
    }
    
    

    
    function addProductToStore(string _name, string _category , string _imageLink , string _descLink , uint _startTime , uint _price , uint _productCondition)
    {
        productIndex+=1;
        Product product = Product(productIndex, _name,  _category,  _imageLink,  _descLink,  _startTime, _price, ProductCondition(_productCondition),0 );
    }
}
