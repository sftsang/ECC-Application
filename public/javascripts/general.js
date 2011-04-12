jQuery(document).ready(function() {	
  $("select, input:checkbox, input:radio, input:file").uniform();
  $(".leader-board-summary-wrap a[title]").tooltip({
    effect: 'fade',
    position: 'bottom right',
    //offset: [100, 5],
    relative: false
  });
})