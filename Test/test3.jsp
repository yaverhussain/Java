<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script type="text/javascript"
	src="/tpportal/js/lib/jquery-1.8.0.min.js"></script>
<script type="text/javascript"
	src="/tpportal/js/lib/dashboard-component.js"></script>
<link type="text/css" href="/tpportal/css/style.css" rel="stylesheet" />
<link type="text/css" href="/tpportal/css/outsidein-dashboard.css"
	rel="stylesheet" />
</head>
<body class="oiComponentDialogScreen">
	<div class="oiContainer">
		<div class="oiMain" id='verbatimPopupMain'>
			<div class="oiMainSection">
				<div>
					<div class="oiLayout oiVerticalLayout">
						<div class="oiLayoutItem">
							<div>
								<div class='oiLayout oiVerticalLayout'>
									<div class='oiLayoutItem oiPaddedBottomOnly'>
										<div>
											<div class='oiLayout oiVerticalLayout'>
												<div class='oiLayoutItem oiRight'>
													<input type='button' name='btnCancel' id='btnCancel'
														value='Close' onclick='window.parent.hideLightbox();'
														class='oiButton oiButtonSecondary'>
												</div>
												<div class='oiLayoutItem'>
													<div class='oiLeft'>
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
													</div>
													<div class='oiLeft'>&nbsp;&nbsp;</div>
													<div class='oiLeft'>
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
													</div>
													<div class='oiLeft'>&nbsp;&nbsp;</div>
													<div class='oiLeft oiPaddedTop5 oiAlignRight totalResults'
														id='verbatimDetailTotalResults'>33 items</div>
													<div class='oiLeft'>&nbsp;&nbsp;</div>
													<div class='oiLeft oiPaddedTop5'>
														<div class="oiActionLink">
															<div class="oiActionLinkIcon">
																<img src="/tpportal/images/icons/cx_export.png" />
															</div>
															<a
																onclick="window.parent.showPopupFixedSize('/tp/portal/verbatim/download-display?dashboardVerbatimDownload=true&commentsCount=33&collectionID=2101',400,150);"
																href="#">Export</a>
														</div>
													</div>
													<div class='oiClear'></div>
												</div>
											</div>
										</div>
									</div>
								</div>
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
																	success : function(
																			response) {
																		jQuery(
																				'#verbatimPopupMain')
																				.html(
																						response);
																	}
																});
													});
								</script>
							</div>
						</div>
						<div class="oiLayoutItem">
							<div>
								<div id="details" class="oiLayout oiVerticalLayout">
									<div class="oiLayoutItem oiMainColumn">
										<div>
											<div id="feedback-content"
												class="oiContentPanelNoPadding oiVerticalLayout oiScrollable "
												style="height: 465px">
												<div class="oiLayoutItem oiPaddedSide">
													<div id="hirarchytabmeasureTableverbatimDetail"
														class="oiLayout oiVerticalLayout">
														<div class='oiLayout oiVerticalLayout'>
															<div class='oiLayoutItem'>
																<div class='oiContent'>
																	<div class="oiColumnLayout">
																		<div class="oiLayoutItem">
																			<div>
																				<div class="oiLayout oiVerticalLayout">
																					<div class="oiLayoutItem">
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Improvement</div>
																								<blockquote>bulk - satest</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361600&verbatimID=9549588')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Improvement</div>
																								<blockquote>BULK TEST - 1 comment
																									only</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361596&verbatimID=9550195')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Improvement</div>
																								<blockquote>bulk test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361594&verbatimID=9551138')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Impressed</div>
																								<blockquote>bulk test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361594&verbatimID=9557360')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Exceed
																									Expectations</div>
																								<blockquote>bulk test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361594&verbatimID=9560126')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Service
																									Improvement</div>
																								<blockquote>bulk test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361594&verbatimID=9564178')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Product
																									Improvement</div>
																								<blockquote>bulk test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361594&verbatimID=9569942')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #aa4643;">0</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Improvement</div>
																								<blockquote>b test</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361599&verbatimID=9551219')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #89a54e;">10</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px dotted #ccc; padding-bottom: 5px; margin-bottom: 10px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Improvement</div>
																								<blockquote>satest</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361509&verbatimID=9551313')">View
																									details</a>
																							</div>
																						</div>
																						<div title="Experience Score"
																							class="oiVerbatimScore"
																							style="background-color: #89a54e;">10</div>
																						<div class='oiVerbatimItem'
																							style="white-space: normal; overflow: visible; border-bottom: 1px solid #ccc; padding-bottom: 5px; margin-bottom: 5px;">
																							<div class="oiComments">
																								<div class="oiTimeStamp">3 months ago</div>
																								<div class="oiQuestion">Experience
																									Impressed</div>
																								<blockquote>satest</blockquote>
																								<a href="#" class="oiVerbatimDetailsLink"
																									onClick="window.parent.showPopup('/tp/portal/verbatimverbatim-summary?id=2101&resID=361509&verbatimID=9556354')">View
																									details</a>
																							</div>
																						</div>
																						<div class="oiPageSelector">
																							<table width="100%" cellspacing="0"
																								cellpadding="0">
																								<tr>
																									<td style="width: 50%;"><table
																											cellspacing="0" cellpadding="2" border="0">
																											<tr>
																												<td><img width="30" height="20"
																													src="/tpportal/images/icons/paging-first.gif"
																													title="First Page"
																													style="opacity: 0.3; filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=30); filter: alpha(opacity = 30); -moz-opacity: 0.3; -khtml-opacity: 0.3;"></td>
																												<td><img width="25" height="20"
																													src="/tpportal/images/icons/paging-previous.gif"
																													title="Previous Page"
																													style="opacity: 0.3; filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=30); filter: alpha(opacity = 30); -moz-opacity: 0.3; -khtml-opacity: 0.3;"></td>
																												<td>Page 1 of 4</td>
																												<td><a
																													href="javascript:updatehirarchytabmeasureTableverbatimDetailComponentPage('hirarchytabmeasureTableverbatimDetail',2)"><img
																														width="25" height="20"
																														src="/tpportal/images/icons/paging-next.gif"
																														title="Next Page" class="enabled"></a></td>
																												<td><a
																													href="javascript:updatehirarchytabmeasureTableverbatimDetailComponentPage('hirarchytabmeasureTableverbatimDetail',4)"><img
																														width="30" height="20"
																														src="/tpportal/images/icons/paging-last.gif"
																														title="Last Page" class="enabled"></a></td>
																											</tr>
																										</table></td>
																									<td></td>
																									<td id='verbatimTotalResults' align="right"
																										style="width: 50%;">33 items
																								</tr>
																							</table>
																						</div>
																						<script type="text/javascript"> function updatehirarchytabmeasureTableverbatimDetailComponentPage(componentID,pageIndex){$.ajax({type: 'POST',dataType: 'html',url: document.URL,data: 'pageIndex='+pageIndex+'&action=ajaxcomponent'+'&componentid=hirarchytabmeasureTableverbatimDetail'+'&renderaction=2'+'&questionfilter=0'+'&scoresegmentfilter='+'&isrequestfrompopup=true',beforeSend: function() {}, success: function(response) {jQuery('#' + componentID + ' .oiHeading').html(jQuery(response).find('.oiHeading').html());jQuery('#' + componentID + ' .oiContent').html(jQuery(response).find('.oiContent').html());}});}</script>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class='oiClear'></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>