<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<base href="${pageContext.request.contextPath }/" />
		<title>帖子详细</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
		<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
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
							<p class="jive-page-title"> 主题：${title } </p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="jive-icon">
								<a href="replyFlat?id=${id }&rootid=0"><img src="images/reply-16x16.gif" alt="回复本主题" border="0" height="16" width="16"></a>
							</td>
							<td class="jive-icon-label">
								<a id="jive-reply-thread" href="replyFlat?id=${id }&rootid=0">回复本主题</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">
										
										<c:set var="index" value="0"></c:set>
										<c:forEach items="${list }" var="ar" varStatus="status">
											<c:choose>
												<c:when test="${index == 0 }"><c:set var="numStr" value="楼主"></c:set></c:when>
												<c:otherwise><c:set var="numStr" value="第${index }楼"></c:set></c:otherwise>
											</c:choose>
											<c:set var="index" value="${index + 1 }"></c:set>
											
											<table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody>
													<tr id="jive-message-780144" class="jive-odd" valign="top">
														<td class="jive-first" width="1%">
															<!-- 个人信息的table -->
															<table border="0" cellpadding="0" cellspacing="0" width="150">
																<tbody>
																	<tr>
																		<td>
																			<table border="0" cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%">
																							<nobr>
																								<a href="http://bbs.chinajavaworld.com/profile.jspa?userID=215489" title="诺曼底客">诺曼底客</a>
																							</nobr>
																						</td>
																						<td style="padding: 0px;" width="99%"><img class="jive-status-level-image" src="images/level3.gif" title="世界新手" alt="" border="0"><br>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<img class="jive-avatar" src="images/avatar-display.png" alt="" border="0"> <br>
																			<br>
																			<span class="jive-description"> 发表:34 <br>点数: 100<br>注册:07-5-10 <br>
                                  											<a href="http://blog.chinajavaworld.com/u/215489" target="_blank"><font color="red">访问我的Blog</font></a> </span> </td>
																	</tr>
																</tbody>
															</table>
															<!--个人信息table结束-->
															
														</td>
														<td class="jive-last" width="99%">
															<table border="0" cellpadding="0" cellspacing="0" width="100%">
																<tbody>
																	<tr valign="top">
																		<td width="1%"></td>
																		<td width="97%"><span class="jive-subject">${numStr }：${ar.getTitle() }</span> </td>
																		<td class="jive-rating-buttons" nowrap="nowrap" width="1%"></td>
																		<td width="1%">
																			<div class="jive-buttons">
																				<table border="0" cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td></td>
																							<td class="jive-icon">
																								<a href="replyFlat?id=${ar.getId() }&rootid=${ar.getRootid() }" title="回复本主题"><img src="images/reply-16x16.gif" alt="回复本主题" border="0" height="16" width="16"></a>
																							</td>
																							<td class="jive-icon-label">
																								<!-- 回复主题 -->
																								<a href="replyFlat?id=${ar.getId() }&rootid=${ar.getRootid() }" title="回复本主题">回复</a>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br>
																			<br>
																			<!-- 展示主题 -->
																			${ar.getCont() }
																			<br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="font-size: 9pt;"><img src="images/sigline.gif"><br>
																			<font color="#568ac2">学程序是枯燥的事情，愿大家在一起能从中得到快乐！</font> <br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;"> ・
																			<a href="http://www.bjsxt.com">
																				<font color="#666666">http://www.bjsxt.com</font>
																			</a>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>
											
											</c:forEach>

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
																	<a href="article/flat"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a>
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