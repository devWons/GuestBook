<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title><s:message code="common.title" /></title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<script type="text/javascript">
	
</script>
<body>
<%@ include file="/WEB-INF/views/include/top_nav.jsp" %>
	<section id="content">
		<article id="camera" class="active">
			<i class="icon-camera"></i>
			<h1>Camera</h1>
			<div class="cnt">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh libero, tempor eget nunc eget, dapibus lacinia augue. Praesent ut feugiat sapien. Mauris facilisis varius urna vel ullamcorper. Donec a ipsum magna. In scelerisque enim dolor, sit amet fringilla magna ultricies in. In nulla nisi, ornare ut placerat vel, sollicitudin ut sem. Aliquam eleifend lectus a orci fermentum, a gravida lorem ornare. Etiam purus dui, dignissim vitae laoreet ut, elementum at orci. Duis vitae luctus tortor. Phasellus risus orci, pulvinar quis dignissim id, scelerisque quis metus. Nulla facilisi. Maecenas semper lorem id eros ultricies vestibulum. Sed dapibus laoreet scelerisque. Sed suscipit ante sit amet lacus ultrices, ut faucibus justo malesuada. Curabitur id tristique enim. Phasellus nec dapibus ipsum.
				<br/><br/>
				Sed in lectus aliquet, iaculis turpis ac, scelerisque ante. Nullam nec quam ac neque porttitor semper at eget neque. Maecenas auctor dolor felis, id tempus dui mollis in. Duis bibendum nunc augue, eu ornare dolor dapibus sed. In nec facilisis purus. Nulla at tincidunt velit. Quisque arcu lorem, pulvinar rutrum lectus vel, feugiat interdum ligula. Sed in placerat nisl, nec dictum risus. Curabitur eleifend commodo purus, quis tempor odio. Suspendisse ullamcorper augue sit amet urna varius aliquam. Morbi nibh dolor, sollicitudin in blandit id, tempus eget magna. Phasellus sem leo, luctus a tortor ac, auctor bibendum massa. Sed quis enim ultricies mi feugiat mattis eu nec nunc. Pellentesque consectetur risus vel adipiscing luctus. Vivamus iaculis gravida odio sit amet scelerisque. Phasellus nec nisi orci.More script and css style : <a href="http://www.htmldrive.net/" title="HTML DRIVE - Free DHMTL Scripts,Jquery plugins,Javascript,CSS,CSS3,Html5 Library">www.htmldrive.net </a>
	
			</div>
		</article>
		<article id="user" class="off">
			<i class="icon-user"></i>
			<h1>User</h1>
			<div class="cnt">
				<table class="tableBasic">
					<colgroup>
						<col width="30px;">
						<col width="150px;">
						<col width="150px;">
						<col width="200px;">
						<col width="200px;">
					</colgroup>
					<thead>
						<tr>
							<th class="tc">No.</th>
							<th class="tc">아이디</th>
							<th class="tc">이름</th>
							<th class="tc">연락처</th>
							<th class="tc">가입일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty userList}">
							<tr>
								<td colspan="5" style="text-align: center;">데이터가 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach items="${userList}" var="item" varStatus="status">
							<tr>
								<td class="tc">${status.count}</td>
								<td class="tc">${item.userId}</td>
								<td class="tc">${item.userName}</td>
								<td class="tc">${item.userPhone}</td>
								<td class="tc">${item.regDt}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</article>
		<article id="mapmarker" class="off">
			<i class="icon-map-marker"></i>
			<h1>Marker</h1>
			<div class="cnt">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh libero, tempor eget nunc eget, dapibus lacinia augue. Praesent ut feugiat sapien. Mauris facilisis varius urna vel ullamcorper. Donec a ipsum magna. In scelerisque enim dolor, sit amet fringilla magna ultricies in. In nulla nisi, ornare ut placerat vel, sollicitudin ut sem. Aliquam eleifend lectus a orci fermentum, a gravida lorem ornare. Etiam purus dui, dignissim vitae laoreet ut, elementum at orci. Duis vitae luctus tortor. Phasellus risus orci, pulvinar quis dignissim id, scelerisque quis metus. Nulla facilisi. Maecenas semper lorem id eros ultricies vestibulum. Sed dapibus laoreet scelerisque. Sed suscipit ante sit amet lacus ultrices, ut faucibus justo malesuada. Curabitur id tristique enim. Phasellus nec dapibus ipsum.
				<br/><br/>
				Sed in lectus aliquet, iaculis turpis ac, scelerisque ante. Nullam nec quam ac neque porttitor semper at eget neque. Maecenas auctor dolor felis, id tempus dui mollis in. Duis bibendum nunc augue, eu ornare dolor dapibus sed. In nec facilisis purus. Nulla at tincidunt velit. Quisque arcu lorem, pulvinar rutrum lectus vel, feugiat interdum ligula. Sed in placerat nisl, nec dictum risus. Curabitur eleifend commodo purus, quis tempor odio. Suspendisse ullamcorper augue sit amet urna varius aliquam. Morbi nibh dolor, sollicitudin in blandit id, tempus eget magna. Phasellus sem leo, luctus a tortor ac, auctor bibendum massa. Sed quis enim ultricies mi feugiat mattis eu nec nunc. Pellentesque consectetur risus vel adipiscing luctus. Vivamus iaculis gravida odio sit amet scelerisque. Phasellus nec nisi orci.
			</div>
		</article>
		<article id="music" class="off">
			<i class="icon-music"></i>
			<h1>Music</h1>
			<div class="cnt">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh libero, tempor eget nunc eget, dapibus lacinia augue. Praesent ut feugiat sapien. Mauris facilisis varius urna vel ullamcorper. Donec a ipsum magna. In scelerisque enim dolor, sit amet fringilla magna ultricies in. In nulla nisi, ornare ut placerat vel, sollicitudin ut sem. Aliquam eleifend lectus a orci fermentum, a gravida lorem ornare. Etiam purus dui, dignissim vitae laoreet ut, elementum at orci. Duis vitae luctus tortor. Phasellus risus orci, pulvinar quis dignissim id, scelerisque quis metus. Nulla facilisi. Maecenas semper lorem id eros ultricies vestibulum. Sed dapibus laoreet scelerisque. Sed suscipit ante sit amet lacus ultrices, ut faucibus justo malesuada. Curabitur id tristique enim. Phasellus nec dapibus ipsum.
				<br/><br/>
				Sed in lectus aliquet, iaculis turpis ac, scelerisque ante. Nullam nec quam ac neque porttitor semper at eget neque. Maecenas auctor dolor felis, id tempus dui mollis in. Duis bibendum nunc augue, eu ornare dolor dapibus sed. In nec facilisis purus. Nulla at tincidunt velit. Quisque arcu lorem, pulvinar rutrum lectus vel, feugiat interdum ligula. Sed in placerat nisl, nec dictum risus. Curabitur eleifend commodo purus, quis tempor odio. Suspendisse ullamcorper augue sit amet urna varius aliquam. Morbi nibh dolor, sollicitudin in blandit id, tempus eget magna. Phasellus sem leo, luctus a tortor ac, auctor bibendum massa. Sed quis enim ultricies mi feugiat mattis eu nec nunc. Pellentesque consectetur risus vel adipiscing luctus. Vivamus iaculis gravida odio sit amet scelerisque. Phasellus nec nisi orci.
			</div>
		</article>
		<article id="commentalt" class="off">
			<i class="icon-comment-alt"></i>
			<h1>Comment</h1>
			<div class="cnt">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh libero, tempor eget nunc eget, dapibus lacinia augue. Praesent ut feugiat sapien. Mauris facilisis varius urna vel ullamcorper. Donec a ipsum magna. In scelerisque enim dolor, sit amet fringilla magna ultricies in. In nulla nisi, ornare ut placerat vel, sollicitudin ut sem. Aliquam eleifend lectus a orci fermentum, a gravida lorem ornare. Etiam purus dui, dignissim vitae laoreet ut, elementum at orci. Duis vitae luctus tortor. Phasellus risus orci, pulvinar quis dignissim id, scelerisque quis metus. Nulla facilisi. Maecenas semper lorem id eros ultricies vestibulum. Sed dapibus laoreet scelerisque. Sed suscipit ante sit amet lacus ultrices, ut faucibus justo malesuada. Curabitur id tristique enim. Phasellus nec dapibus ipsum.
				<br/><br/>
				Sed in lectus aliquet, iaculis turpis ac, scelerisque ante. Nullam nec quam ac neque porttitor semper at eget neque. Maecenas auctor dolor felis, id tempus dui mollis in. Duis bibendum nunc augue, eu ornare dolor dapibus sed. In nec facilisis purus. Nulla at tincidunt velit. Quisque arcu lorem, pulvinar rutrum lectus vel, feugiat interdum ligula. Sed in placerat nisl, nec dictum risus. Curabitur eleifend commodo purus, quis tempor odio. Suspendisse ullamcorper augue sit amet urna varius aliquam. Morbi nibh dolor, sollicitudin in blandit id, tempus eget magna. Phasellus sem leo, luctus a tortor ac, auctor bibendum massa. Sed quis enim ultricies mi feugiat mattis eu nec nunc. Pellentesque consectetur risus vel adipiscing luctus. Vivamus iaculis gravida odio sit amet scelerisque. Phasellus nec nisi orci.
			</div>
		</article>
		<article id="moon" class="off">
			<i class="icon-moon"></i>
			<h1>Moon</h1>
			<div class="cnt">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh libero, tempor eget nunc eget, dapibus lacinia augue. Praesent ut feugiat sapien. Mauris facilisis varius urna vel ullamcorper. Donec a ipsum magna. In scelerisque enim dolor, sit amet fringilla magna ultricies in. In nulla nisi, ornare ut placerat vel, sollicitudin ut sem. Aliquam eleifend lectus a orci fermentum, a gravida lorem ornare. Etiam purus dui, dignissim vitae laoreet ut, elementum at orci. Duis vitae luctus tortor. Phasellus risus orci, pulvinar quis dignissim id, scelerisque quis metus. Nulla facilisi. Maecenas semper lorem id eros ultricies vestibulum. Sed dapibus laoreet scelerisque. Sed suscipit ante sit amet lacus ultrices, ut faucibus justo malesuada. Curabitur id tristique enim. Phasellus nec dapibus ipsum.
				<br/><br/>
				Sed in lectus aliquet, iaculis turpis ac, scelerisque ante. Nullam nec quam ac neque porttitor semper at eget neque. Maecenas auctor dolor felis, id tempus dui mollis in. Duis bibendum nunc augue, eu ornare dolor dapibus sed. In nec facilisis purus. Nulla at tincidunt velit. Quisque arcu lorem, pulvinar rutrum lectus vel, feugiat interdum ligula. Sed in placerat nisl, nec dictum risus. Curabitur eleifend commodo purus, quis tempor odio. Suspendisse ullamcorper augue sit amet urna varius aliquam. Morbi nibh dolor, sollicitudin in blandit id, tempus eget magna. Phasellus sem leo, luctus a tortor ac, auctor bibendum massa. Sed quis enim ultricies mi feugiat mattis eu nec nunc. Pellentesque consectetur risus vel adipiscing luctus. Vivamus iaculis gravida odio sit amet scelerisque. Phasellus nec nisi orci.
			</div>
		</article>
	</section>
</body>
</html>
