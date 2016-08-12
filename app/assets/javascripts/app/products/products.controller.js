function ProductsController(){
  var vm = this;

  vm.products = [
    {
      name: 'ipad mini',
      price: 39999,
      description: 'Ipad mini description will go here'
    },
    {
      name: 'Blackberry',
      price: 9999,
      description: 'Blackberry description will go here'
    },
    {
      name: 'Xbox One',
      price: 29999,
      description: 'Xbox One description will go here'
    }
  ]

}

angular
  .module("app")
  .controller('ProductsController', ProductsController);
