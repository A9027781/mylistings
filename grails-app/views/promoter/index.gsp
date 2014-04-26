
<%@ page import="uk.ac.shu.webarch.mylistings.Promoter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'promoter.label', default: 'Promoter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-promoter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-promoter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="promoterName" title="${message(code: 'promoter.promoterName.label', default: 'Promoter Name')}" />
					
						<g:sortableColumn property="promoterTelephone" title="${message(code: 'promoter.promoterTelephone.label', default: 'Promoter Telephone')}" />
					
						<g:sortableColumn property="promterEmail" title="${message(code: 'promoter.promterEmail.label', default: 'Promter Email')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'promoter.website.label', default: 'Website')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${promoterInstanceList}" status="i" var="promoterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${promoterInstance.id}">${fieldValue(bean: promoterInstance, field: "promoterName")}</g:link></td>
					
						<td>${fieldValue(bean: promoterInstance, field: "promoterTelephone")}</td>
					
						<td>${fieldValue(bean: promoterInstance, field: "promterEmail")}</td>
					
						<td>${fieldValue(bean: promoterInstance, field: "website")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${promoterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
