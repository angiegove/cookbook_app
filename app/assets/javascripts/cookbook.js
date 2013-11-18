$(document).ready( function () {

  var options, a;
  jQuery(function(){
     options = { serviceUrl:'/ingredients_list' };
     a = $('#query').autocomplete(options);
  });

  // var a = $('#query').autocomplete({
  //   serviceUrl:'service/autocomplete.ashx',
  //   minChars:2,
  //   delimiter: /(,|;)\s*/, // regex or character
  //   maxHeight:400,
  //   width:300,
  //   zIndex: 9999,
  //   deferRequestBy: 0, //miliseconds
  //   params: { country:'Yes' }, //aditional parameters
  //   noCache: false, //default is false, set to true to disable caching
  //   // callback function:
  //   onSelect: function(value, data){ alert('You selected: ' + value + ', ' + data); },

  // });


});

