$(document).ready( function () {

  // $('#query').autocomplete({
  //   serviceUrl: '/measurements_list',
  //   onSelect: function (suggestion) {
  //       alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
  //   }

  // $('#query').autocomplete({
  //   serviceUrl: '/ingredients_list',
  //   onSelect: function (suggestion) {
  //       alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
  //   }
// });
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

