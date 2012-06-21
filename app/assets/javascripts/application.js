// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


function change_to_menu_stockgroups(){
  $('div.stocktype_container').hide();
  $('div.stockgroup_container').fadeIn(150)
}

function change_to_menu_stocktypes( group ){
  $('div.stockgroup_container').fadeOut(80)
  $('div.stocktype_container#' + group).fadeIn(150);
}

function close_menus(){
  $('div.stocktype_container').fadeOut(80)
  $('div.stockgroup_container').fadeOut(80)
  $("div.custom_entry").fadeOut(80)
}

function submit_new_item_form_for( item_name, item_group ){
  close_menus();
  $('#item_name').val(item_name)
  $('#item_group').val(item_group)

  $("#new_item").submit();
}

function submit_new_stocktype_form_for( item_name, item_group ){
  close_menus();
  $('#stocktype_name').val(item_name)
  $('#stocktype_group').val(item_group)

  $("#new_stocktype").submit();
}


function delete_item( id ){
  $("div#" + id).fadeOut(200, function() { $(this).remove() } );
}

function do_custom_entry( group ){
  close_menus()
  $("div#custom_entry_title").html("Add " + group + " item: " )
  //#$("#add_custom_item_form").attr("onSubmit", "submit_custom_entry( '" + group + "' )" )  
  $("#add_custom_item_form").submit( 
    function() {
      submit_custom_entry( group )
      return false;
    });

  $("div.custom_entry").fadeIn(200, function() {} );
}

function submit_custom_entry( group ){
  console.log( $("#custom_item").val() )
  console.log( group )
  // trigger addition to shopping list
  submit_new_item_form_for( $("#custom_item").val(), group )

  // trigger addition to stocktype list (unless item already exists)
  submit_new_stocktype_form_for( $("#custom_item").val(), group )

  close_menus() 
}

