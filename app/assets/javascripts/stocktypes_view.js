
var categories = [
"Dairy",
"Starch",
"Produce",
"Protein ",
"Dessert",
"Condiments",
"Spices",
"Beverages",
"Office",
"Household"
];

function setup_stockitems_container(){

  for( cat in categories ){
    subcont = $( "<div id='group_cont_" + categories[cat] + "'>" + categories[cat] + "</div>" )
    // now scan the divs and move the divs into the right spot
    $("div.group_" + categories[cat]).appendTo( subcont )
    $("#stock_container").append(subcont)
  }

}

$( function(){
  setup_stockitems_container();
} )



