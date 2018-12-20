<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header-nav.jsp" flush="true">
  <jsp:param name="htmlTitle" value="Dashboard"/>
</jsp:include>

  <h1>Dashboard</h1>
  <div class="grid-area">
    <div>
      <span>New Faces</span>
      <span>2</span>
    </div>
    <div>
      <span>Last Video Status</span>
      <span>Processing</span>
    </div>
    <div>
      <span>Last Video Snapshot</span>
      <img src="https://via.placeholder.com/300x150">
    </div>
    <div>
      <span>Successful Processing</span>
      <ul class="data-list">
        <li class="data-list-item">
          <c:forEach items="${dtoList}" var="dto" varStatus="status">
            ${dto.s3location}
          </c:forEach>
        </li>
      </ul>
    </div>
  </div>

<jsp:include page="includes/footer.jsp" flush="true">
  <jsp:param name="footerParam" value="none"/>
</jsp:include>
