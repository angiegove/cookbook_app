// Using {{}} in underscore instead of <% %> tags
_.templateSettings = {
    interpolate: /\{\{\=(.+?)\}\}/g,
    evaluate: /\{\{(.+?)\}\}/g
};


var recipe_ingredient = [];

var add_recipe_ingredient = function (event) {
  event.preventDefault;
  var amount = $('#amount').val();
  var measurement = $('#measurement_query').val();
  var measurement_id = $('#measurement_query').data('measurement-id');
  var ingredient = $('#ingredient_query').val();
  var ingredient_id = $('#ingredient_query').data('ingredient-id');

  var str = '';
  if (measurement) {
      str = '<p>' + amount + ' ' + measurement + ' ' + ingredient + '</p>'
  } else {
      str = '<p>' + amount + ' ' + ingredient + '</p>'
  }
  var $ingredient = $(str);

  // Add the new ingredient as a hash to send to the server.
  ingredients.push({
      amount: amount,
      measurement: measurement_id,
      ingredient: ingredient_id
  });

  console.log(ingredients);

  $('#recipe_ingredients_display').append($ingredient);

  // Clear out previous values
  $('#amount').val('').focus();
  $('#measurement_query').val('');
  $('#ingredient_query').val('');

};





$(document).ready( function () {

// Below handles the autocomplete for adding an ingredient in the recipe form
  $('#ingredient_query').autocomplete({
    serviceUrl:'/ingredients_list',
    minChars:2,
    delimiter: /(,|;)\s*/, // regex or character
    maxHeight:400,
    width:300,
    zIndex: 9999,
    deferRequestBy: 0, //miliseconds
    noCache: false, //default is false, set to true to disable caching
    // callback function:
    onSelect: function(data){
      $('#ingredient_query').data('ingredient-id', data.data)
    },
  });
// Below handles the autocomplete for adding the measurement unit in the recipe form
  $('#measurement_query').autocomplete({
    serviceUrl:'/measurements_list',
    minChars:1,
    delimiter: /(,|;)\s*/, // regex or character
    maxHeight:400,
    width:300,
    zIndex: 9999,
    deferRequestBy: 0, //miliseconds
    noCache: false, //default is false, set to true to disable caching
    // callback function:
    onSelect: function(data){
      $('#measurement_query').data('measurement-id', data.data) ;
    },
  });

  $('#add_ingredient_button').click(add_recipe_ingredient);

  $('#new_recipe').submit(function(event) {

  });

});

