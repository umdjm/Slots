$(document).ready(function () {    


        // normal example
        $('.slot').jSlots({
            spinner : '#playNormal',
            time : 7000,
            loops: 4,
            onEnd : function(winner) {  
            	var winner = $('.slot').find("li img").eq(winner-1).attr("title");
            	$("#winner").text(winner);
                
            }
        });

});