function CartsController() {
  var vm = this;
  vm.cart = {
    id: 1,
    products: [
      {
        id: 1,
        name: 'ipad mini',
        price: 39999,
        description: 'Ipad mini description will go here'
      },
      {
        id: 2,
        name: 'Blackberry',
        price: 9999,
        description: 'Blackberry description will go here'
      },
    ]
  }

}

angular
  .module('app')
  .controller('CartsController', CartsController)
