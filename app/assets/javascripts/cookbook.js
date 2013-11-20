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
  recipe_ingredient.push({
      amount: amount,
      measurement: measurement_id,
      ingredient: ingredient_id
  });

  console.log(recipe_ingredient);

  $('#recipe_ingredients_display').append($ingredient);

  // Clear out previous values
  $('#amount').val('').focus();
  $('#measurement_query').val('');
  $('#ingredient_query').val('');

};





$(document).ready( function () {

  $('#recipe_duration').timepicker();

// Below handles the autocomplete for adding an ingredient in the recipe form
  $('#ingredient_query, .ingredient_edit').autocomplete({
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
  $('#measurement_query, .measurement_edit').autocomplete({
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


  $('#new_recipe').submit(function () {
    $.each(recipe_ingredient, function (i, ingredient) {
      var $amount = $('<input type="hidden" name="recipe_ingredients[' + i + '][amount]">');
      var $measurement = $('<input type="hidden" name="recipe_ingredients[' + i + '][measurement_id]">');
      var $ingredient = $('<input type="hidden" name="recipe_ingredients[' + i + '][ingredient_id]">');

      $amount.val(ingredient.amount);
      $measurement.val(ingredient.measurement);
      $ingredient.val(ingredient.ingredient);

      $amount.appendTo('#secret_ingredients');
      $measurement.appendTo('#secret_ingredients');
      $ingredient.appendTo('#secret_ingredients');
    });

    //return false; // Just so we can inspect the form before submission.
  });

});

