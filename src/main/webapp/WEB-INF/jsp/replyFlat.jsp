<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>Java|Java世界_中文论坛|ChinaJavaWorld技术论坛 : 初学java遇一难题！！望大家能帮忙一下 ...</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
		<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
		<!-- fckeditor -->
		<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
		<script type="text/javascript">
			window.onload = function() {
				// Automatically calculates the editor base path based on the _samples directory.
				// This is usefull only for these samples. A real application should use something like this:
				// oFCKeditor.BasePath = '/fckeditor/' ;	// '/fckeditor/' is the default value.
				// var sBasePath = document.location.pathname.substring(0,document.location.pathname.lastIndexOf('_samples')) ;
				var sBasePath = "<%=request.getScheme() + ": //" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/fckeditor/" %>"
					//alert(sBasePath);
					var oFCKeditor = new FCKeditor('cont');
				oFCKeditor.BasePath = sBasePath;
				oFCKeditor.ReplaceTextarea();
			}
		</script>
		<!-- end of fckeditor -->

		<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
	</head>

	<body>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td width="40%"><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%">
					</td>
					<td width="1%"><img src="images/header-right.gif" alt="" height="57" border="0"></td>
				</tr>
			</tbody>
		</table>
		<br>
		<div id="jive-flatpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<p class="jive-breadcrumbs">
								<a href="article/flat">首页</a> &#187;
								<a href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld技术论坛|Java世界_中文论坛</a> &#187;
								<a href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java 2 Platform, Standard Edition (J2SE)</a> &#187;
								<a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java语言*初级版</a>
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="930" height="61">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">

											<form action="replyDealFlat" method="post">
												<input type="hidden" name="id" value="${id }" />
												<input type="hidden" name="rootid" value="${rootid }" /> 标题：
												<input type="text" name="title"><br> 内容：
												<textarea name="cont" rows="15" cols="80"></textarea>
												<br>
												<input type="submit" value="回复" />
											</form>

										</div>
									</div>
								</div>
								<div class="jive-message-list-footer">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td nowrap="nowrap" width="1%"><br><br></td>
												<td align="center" width="98%">
													<table border="0" cellpadding="0" cellspacing="0">
														<tbody>
															<tr>
																<td>
																	<a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a>
																</td>
																<td>
																	<a href="article/flat">返回到主题列表</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td nowrap="nowrap" width="1%">&nbsp;</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</td>
						<td width="1%">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>

</html>