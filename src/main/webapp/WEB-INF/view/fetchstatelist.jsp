<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Video State List</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
  <h1>Video State List</h1>
  <ul>
    <c:forEach items="${stateList}" var="state" varStatus="varStatus">
      <li><span>State</span> <span>${state.jobStatus}</span></li>
    </c:forEach>
  </ul>

  <div><a href="${pageContext.request.contextPath}">VL Home</a></div>
</body>
</html>
