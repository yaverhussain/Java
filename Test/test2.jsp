<script type='text/javascript'>
	jQuery(
			'#hirarchytabmeasureTableverbatimDetailQuestionFilter, #hirarchytabmeasureTableverbatimDetailScoreSegmentFilter')
			.change(
					function() {
						var question = jQuery(
								'#hirarchytabmeasureTableverbatimDetailQuestionFilter')
								.val();
						var segment = jQuery(
								'#hirarchytabmeasureTableverbatimDetailScoreSegmentFilter')
								.val();
						jQuery
								.ajax({
									type : 'POST',
									dataType : 'html',
									url : document.URL,
									data : {
										action : 'ajaxcomponent',
										componentid : 'hirarchytabmeasureTableverbatimDetail',
										questionfilter : question,
										scoresegmentfilter : segment,
										isrequestfrompopup : true
									},
									beforeSend : function() {
									},
									success : function(response) {
										jQuery('#verbatimPopupMain').html(
												response);
									}
								});
					});
</script>