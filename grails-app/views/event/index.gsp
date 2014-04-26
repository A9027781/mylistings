
<%@ page import="uk.ac.shu.webarch.mylistings.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="endTime" title="${message(code: 'event.endTime.label', default: 'End Time')}" />
					
						<g:sortableColumn property="eventDate" title="${message(code: 'event.eventDate.label', default: 'Event Date')}" />
					
						<g:sortableColumn property="eventName" title="${message(code: 'event.eventName.label', default: 'Event Name')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'event.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="startTime" title="${message(code: 'event.startTime.label', default: 'Start Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "endTime")}</g:link></td>
					
						<td><g:formatDate date="${eventInstance.eventDate}" /></td>
					
						<td>${fieldValue(bean: eventInstance, field: "eventName")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "startTime")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
