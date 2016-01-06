<div style='width: 200px'>
	<select style='display: none;'
		id='hirarchytabmeasureTableverbatimDetailQuestionFilter'><option
			value='all'>All Questions</option>
		<option value='131837'>Experience Impressed</option>
		<option value='131836'>Experience Improvement</option>
		<option value='131848'>Product Improvement</option>
		<option value='141610'>Exceed Expectations</option>
		<option value='131846'>Service Improvement</option></select>
</div>
<script>
	jQuery(function() {
		prettyDropDown('#hirarchytabmeasureTableverbatimDetailQuestionFilter');
	});
</script>


<div style='width: 100px'>
	<select style='display: none'
		id='hirarchytabmeasureTableverbatimDetailScoreSegmentFilter'><option
			value='all'>0 - 10</option>
		<option value='0:6'>0 - 6</option>
		<option value='7:8'>7 - 8</option>
		<option value='9:10'>9 - 10</option></select>
</div>
<script>
	jQuery(function() {
		prettyDropDown('#hirarchytabmeasureTableverbatimDetailScoreSegmentFilter');
	});
</script>

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