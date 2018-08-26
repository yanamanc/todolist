jQuery(fumction($){

	$(".DeleteActoin").click( function() {
		var current_item_tr = $(this).parents('tr);')
		if(confirm("Точно удалить?")) {
			$ajax({
				url: '/your_tasks/:id',
				type: 'POST',
				data: { _method: 'DELETE'},
				success: function() {
					current_item_tr.fadeOut(200);
				}
			});
		};
	});

});