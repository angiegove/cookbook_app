// var recipe_ingredient = {
//   recipe_ingredient: {},

//   // nextID: 666,

//   // Creates a new recipe_ingredient, adds it to the task array and returns it.
//   create_recipe_ingredient: function (amount, unit, ingredient) {
//     var task = {
//       amount: amount,
//       unit: unit,
//       ingredient: ingredient,
//       // id: this.nextID++,
//       /* For convenience, we'll attach show() behaviour to the task directly. */
//       show: function () {
//         var template = $('#task_template').html();
//         var task_templater = _.template( template );
//         $('#tasks').append( task_templater( this ) );
//       }
//     };

//     // Add the task to the task "tracker."
//     this.tasks[task.id] = task;
//     return task;
//   }
// };


$(document).ready( function () {

// Below handles the autocomplete for adding an ingredient in the recipe form
  var a = $('#ingredient_query').autocomplete({
    serviceUrl:'/ingredients_list',
    minChars:2,
    delimiter: /(,|;)\s*/, // regex or character
    maxHeight:400,
    width:300,
    zIndex: 9999,
    deferRequestBy: 0, //miliseconds
    noCache: false, //default is false, set to true to disable caching
    // callback function:
    onSelect: function(value, data){ alert('You selected: ' + value + ', ' + data); },
  });
// Below handles the autocomplete for adding the measurement unit in the recipe form
  var a = $('#measurement_query').autocomplete({
    serviceUrl:'/measurements_list',
    minChars:1,
    delimiter: /(,|;)\s*/, // regex or character
    maxHeight:400,
    width:300,
    zIndex: 9999,
    deferRequestBy: 0, //miliseconds
    noCache: false, //default is false, set to true to disable caching
    // callback function:
    onSelect: function(value, data){ alert('You selected: ' + value + ', ' + data); },
  });


});

