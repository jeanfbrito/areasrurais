$(document).ready( function() {
    /* ---------------------------------------------------------------------- */
    /*  Ini jQuery UI Slider
    /* ---------------------------------------------------------------------- */
    var $uislider =  $("#ui-slider");                     // UI Slider Variables
    var $beds = $("#beds");                           //
    var $uiAmount = $("#amount");                       //
    var $uiSliderPrice = $("#ui-slider-price");                 //

    $uislider.slider({
      range : true,
      min : 0,
      max : 10,
      values : [1, 4],
      slide : function(event, ui) {
        $beds.val("Select Bedrooms: " + ui.values[0] + " - " + ui.values[1]);
        $( "input#q_bedrooms_gteq").val(ui.values[ 0 ]);
        $( "input#q_bedrooms_lteq").val(ui.values[ 1 ]);
      }
    });

    $beds.val("Select Bedrooms: " + $uislider.slider("values", 0) + " - " + $uislider.slider("values", 1));

    $uiSliderPrice.slider({
      range : true,
      min : 10000,
      max : 2000000,
      step: 1000,
      values : [25000, 255000],
      slide : function(event, ui) {
        $uiAmount.val("Price Range: R$" + ui.values[0] + " - R$" + ui.values[1]);
        $( "input#q_sell_price_gteq").val(ui.values[ 0 ]);
        $( "input#q_sell_price_lteq").val(ui.values[ 1 ]);
      }
    });
    $uiAmount.val("Valor entre: R$" + $uiSliderPrice.slider("values", 0) + " - R$" + $uiSliderPrice.slider("values", 1)); 
    
    /*end jQuery UI Slider*/ 
});