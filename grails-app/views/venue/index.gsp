
<%@ page import="uk.ac.shu.webarch.mylistings.Venue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-venue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-venue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="venueAddress" title="${message(code: 'venue.venueAddress.label', default: 'Venue Address')}" />
					
						<g:sortableColumn property="venueName" title="${message(code: 'venue.venueName.label', default: 'Venue Name')}" />
					
						<g:sortableColumn property="venuePostCode" title="${message(code: 'venue.venuePostCode.label', default: 'Venue Post Code')}" />
					
						<g:sortableColumn property="venueTelephone" title="${message(code: 'venue.venueTelephone.label', default: 'Venue Telephone')}" />
					
						<g:sortableColumn property="venueWebsite" title="${message(code: 'venue.venueWebsite.label', default: 'Venue Website')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${venueInstanceList}" status="i" var="venueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${venueInstance.id}">${fieldValue(bean: venueInstance, field: "venueAddress")}</g:link></td>
					
						<td>${fieldValue(bean: venueInstance, field: "venueName")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "venuePostCode")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "venueTelephone")}</td>
					
						<td>${fieldValue(bean: venueInstance, field: "venueWebsite")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${venueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
