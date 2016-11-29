<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<div class="pagination">
	<a href="javascript:goPage(${param.firstPageNo})" class="first">처음</a>
	<a href="javascript:goPage(${param.prevPageNo})" class="prev">이전</a>
	<span>
		<c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
				<c:choose>
					<c:when test="${i eq param.pageNo}">
						<a href="javascript:goPage(${i})" class="selected">${i}</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:goPage(${i})">${i}</a>
					</c:otherwise>
				</c:choose>
		</c:forEach>
	</span>
	<a href="javascript:goPage(${param.nextPageNo})" class="next">다음</a>
	<a href="javascript:goPage(${param.finalPageNo})" class="last">마지막</a>
</div>