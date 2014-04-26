
<%@ page import="uk.ac.shu.webarch.mylistings.Promoter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'promoter.label', default: 'Promoter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-promoter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-promoter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list promoter">
			
				<g:if test="${promoterInstance?.promoterName}">
				<li class="fieldcontain">
					<span id="promoterName-label" class="property-label"><g:message code="promoter.promoterName.label" default="Promoter Name" /></span>
					
						<span class="property-value" aria-labelledby="promoterName-label"><g:fieldValue bean="${promoterInstance}" field="promoterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoterInstance?.promoterTelephone}">
				<li class="fieldcontain">
					<span id="promoterTelephone-label" class="property-label"><g:message code="promoter.promoterTelephone.label" default="Promoter Telephone" /></span>
					
						<span class="property-value" aria-labelledby="promoterTelephone-label"><g:fieldValue bean="${promoterInstance}" field="promoterTelephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoterInstance?.promterEmail}">
				<li class="fieldcontain">
					<span id="promterEmail-label" class="property-label"><g:message code="promoter.promterEmail.label" default="Promter Email" /></span>
					
						<span class="property-value" aria-labelledby="promterEmail-label"><g:fieldValue bean="${promoterInstance}" field="promterEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoterInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="promoter.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${promoterInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:promoterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${promoterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
