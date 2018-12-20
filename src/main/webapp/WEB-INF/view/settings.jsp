<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="includes/header-nav.jsp" flush="true">
  <jsp:param name="htmlTitle" value="Settings"/>
</jsp:include>

  <h1>Settings</h1>
  <div class="grid-area">
    <form:form method="POST" action="${pageContext.request.contextPath}/changeSettings" modelAttribute="settings">
      <div>
        <span><form:label path="recentVideoInterval">Recent Video Duration</form:label></span>
        <span><form:input path="recentVideoInterval"/><span class="error-message pl-05"><form:errors path='recentVideoInterval' /></span></span>
      </div>
      <div>
        <span><form:label path="facesFoundLastSeveralDays">Several Days Back</form:label></span>
        <span><form:input path="facesFoundLastSeveralDays"/><span class="error-message pl-05"><form:errors path='facesFoundLastSeveralDays' /></span></span>

      </div>
      <div>
        <span><form:label path="greeting">Greeting</form:label></span>
        <span><form:input path="greeting"/></span>
      </div>
      <div>
        <span></span>
        <span><input class="mr-1" type="submit" value="Submit"/><a href="${pageContext.request.contextPath}/settings">Cancel</a></span>
      </div>
    </form:form>
  </div>

<jsp:include page="includes/footer.jsp" flush="true">
  <jsp:param name="footerParam" value="none"/>
</jsp:include>
