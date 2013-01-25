$(document).ready(function () {
  $('#new_student').fileupload({
		dataType: "script",
		add: function(e, data) {
		    types = /(\.|\/)(gif|jpe?g|png)$/i;
		    file = data.files[0];
		    if(types.test(file.type) || types.test(file.name))
		    {
		    	data.context = $('<div class="upload">' + file.name + '<div class="progress"><div class="bar" style="width: 0%"></div></div></div>');
		        $('#new_student').append(data.context);
		        data.submit();
	    	}
		    else
		    {
		        alert("#{file.name} is not a gif, jpeg, or png image file");
			}
		},
	    progress: function (e, data) {
       		progress = parseInt(data.loaded / data.total * 100, 10);
        	data.context.find('.bar').css('width', progress + '%');
	    },

	    done: function (e, data) {
	        data.context.find('.bar').css('width', '100%');
	    }
    });
});

