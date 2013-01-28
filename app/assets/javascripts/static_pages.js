$(document).ready(function () {    


        // normal example
        $('.slot').jSlots({
            spinner : '#playNormal',
            time : 7000,
            loops: 4,
            onEnd : function(winner) {  
            	var winner = $('.slot').find("li img").eq(winner-1).attr("title");
                var alertBox = '<div class="alert alert-success">Winning Student: '+winner+'<button type="button" class="close" data-dismiss="alert">&times;</button></div>';
            	$("#winner").html(alertBox);                
            }
        });

});