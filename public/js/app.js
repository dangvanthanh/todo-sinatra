$(function() {
	// $('.btn-done').on('click', function(e) {
	// 	var $self = $(this),
	// 			item_id = $self.parent().parent('li').attr('id');

	// 	console.log(item_id);

	// 	$.ajax({
	// 		type: 'POST',
	// 		url: '/done',
	// 		data: {id: item_id}
	// 	}).done(function(data) {
	// 		console.log(data.id);
	// 		if (data.status === 'done') {
	// 			$('#' + data.id).find('.btn-done').text('Not done');
	// 			$('#' + data.id).wrapInner('<del>');
	// 		} else {
	// 			$('#' + data.id).find('.btn-done').text('Done');
	// 			$('#' + data.id).html(function(i, h) {
	// 				return h.replace('<del>');
	// 			});
	// 		}
	// 	});

	// 	e.preventDefault();
	// });
});