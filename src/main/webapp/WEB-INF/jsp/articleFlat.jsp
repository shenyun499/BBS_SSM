<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		
		<base href="${pageContext.request.contextPath }/" />
		<title>Java论坛平板展示</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
		<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
		<script language="JavaScript" type="text/javascript" src="images/common.js"></script>
		<script type="text/javascript">
			
		</script>
	</head>

	<body style="margin:0 15px 0 15px;">
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
		<div id="jive-forumpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="98%">
							<p class="jive-breadcrumbs">
								<!-- 搜索框 -->
								<form action="article/search" method="get" >
									<input style="text-indent:2px;" type="text" name="title" />&nbsp;&nbsp;
									<input style="color:white;background:blue;" type="submit" value="文章搜索">
								</form>
								<!-- 退出按钮 -->
								<a style="color:blue;float:right;" href="exit">退出</a>
							<p class="jive-breadcrumbs">论坛: Java语言交流
							</p>
							<p class="jive-description"> 探讨Java语言基础知识,基本语法等 大家一起交流 共同提高！谢绝任何形式的广告 </p>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="jive-icon">
								<a href="post?sign=${1 }"><img src="images/post-16x16.gif" alt="发表新主题" border="0" height="16" width="16"></a>
							</td>
							<td class="jive-icon-label">
								<a id="jive-post-thread" href="postedit">发表新主题</a>
								<a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;isBest=1"></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td><span class="nobreak">
       	     第${page.getPageNum() }页
       	     共${page.getPages() }页
          <span class="jive-paginator"> [
          <a href="article/flat?pageNum=${1 }">首页</a>
          <!-- 如果当前页面第一页，则传第一页，不能上一页 -->
          <c:choose>
          	<c:when test="${page.getPageNum() == 1 }">
          		<a href="article/flat?pageNum=${page.getPageNum() }">上一页</a>
          	</c:when>
          	<c:otherwise>
          		<a href="article/flat?pageNum=${page.getPageNum() - 1 }">上一页</a>
          	</c:otherwise>
          </c:choose>
          <!-- 如果当前页面等于最大页数，则传最大页数，不能下一页 -->
          <c:choose>
          	<c:when test="${page.getPageNum() == page.getPages() }">
          		<a href="article/flat?pageNum=${page.getPageNum() }">下一页</a>
          	</c:when>
          	<c:otherwise>
          		<a href="article/flat?pageNum=${page.getPageNum() + 1 }">下一页</a>
          	</c:otherwise>
          </c:choose>
          <a href="article/flat?pageNum=${page.getPages() }">尾页</a>
           ] </span> </span>
						</td>
					</tr>
				</tbody>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div class="jive-thread-list">
								<div class="jive-table">
									<table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">
										<thead>
											<tr>
												<th class="jive-author"></th>
												<th class="jive-author"> 操作 </th>
												<th class="jive-author"> 主题 </th>
												<th class="jive-author">
													<nobr> 作者 &nbsp; </nobr>
												</th>
												<th class="jive-view-count">
													<nobr> 浏览 &nbsp; </nobr>
												</th>
												<th class="jive-msg-count" nowrap="nowrap"> 回复 </th>
												<th class="jive-last" nowrap="nowrap"> 发布时间 </th>
											</tr>
										</thead>
										<!-- 开始 -->
										<c:forEach items="${list }" var="ar" varStatus="status">
										
										<tbody>
											<tr class="">
												<td class="jive-first" nowrap="nowrap" width="1%">
													<div class="jive-bullet"> <img src="images/read-16x16.gif" alt="已读" border="0" height="16" width="16">
														<!-- div-->
													</div>
												</td>

												<td nowrap="nowrap" width="1%">
													<!-- 更新 -->
													<a href="modifyFlat?id=${ar.getId() }&title=${ar.getTitle() }&cont=${ar.getCont() }">更新</a>
													<!-- 删除 -->
													<a href="deleteFlat?id=${ar.getId() }">删除</a>
												</td>
												<!-- 帖子详细 -->
												<td class="jive-thread-name" width="95%">
													<a id="jive-thread-1" href="articleDetailFlat?id=${ar.getId() }">${ar.getTitle() }</a>
												</td>
												<td class="jive-author" nowrap="nowrap" width="1%"><span class=""> <a href="http://bbs.chinajavaworld.com/profile.jspa?userID=226030">bjsxt</a> </span></td>
												<td class="jive-view-count" width="1%"> 10000</td>
												<td class="jive-msg-count" width="1%"> 0</td>
												<td class="jive-last" nowrap="nowrap" width="1%"> <fmt:formatDate value="${ar.getPdate() }" pattern="yyyy-MM-dd HH:mm:ss"/> <br>
													<div class="jive-last-post"><br> by:
														<a href="http://bbs.chinajavaworld.com/thread.jspa?messageID=780182#780182" title="jingjiangjun" style="">黄智学</a>
													</div>
												</td>
											</tr>
										</tbody>
										
										</c:forEach>
										<!-- end -->
										
									</table>
								</div>
							</div>
							<div class="jive-legend"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<br>
		</div>
	</body>

</html>