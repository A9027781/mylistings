
<%@ page import="uk.ac.shu.webarch.mylistings.Venue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'venue.label', default: 'Venue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-venue" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-venue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list venue">
			
				<g:if test="${venueInstance?.venueAddress}">
				<li class="fieldcontain">
					<span id="venueAddress-label" class="property-label"><g:message code="venue.venueAddress.label" default="Venue Address" /></span>
					
						<span class="property-value" aria-labelledby="venueAddress-label"><g:fieldValue bean="${venueInstance}" field="venueAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.venueName}">
				<li class="fieldcontain">
					<span id="venueName-label" class="property-label"><g:message code="venue.venueName.label" default="Venue Name" /></span>
					
						<span class="property-value" aria-labelledby="venueName-label"><g:fieldValue bean="${venueInstance}" field="venueName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.venuePostCode}">
				<li class="fieldcontain">
					<span id="venuePostCode-label" class="property-label"><g:message code="venue.venuePostCode.label" default="Venue Post Code" /></span>
					
						<span class="property-value" aria-labelledby="venuePostCode-label"><g:fieldValue bean="${venueInstance}" field="venuePostCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.venueTelephone}">
				<li class="fieldcontain">
					<span id="venueTelephone-label" class="property-label"><g:message code="venue.venueTelephone.label" default="Venue Telephone" /></span>
					
						<span class="property-value" aria-labelledby="venueTelephone-label"><g:fieldValue bean="${venueInstance}" field="venueTelephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${venueInstance?.venueWebsite}">
				<li class="fieldcontain">
					<span id="venueWebsite-label" class="property-label"><g:message code="venue.venueWebsite.label" default="Venue Website" /></span>
					
						<span class="property-value" aria-labelledby="venueWebsite-label"><g:fieldValue bean="${venueInstance}" field="venueWebsite"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:venueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${venueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
