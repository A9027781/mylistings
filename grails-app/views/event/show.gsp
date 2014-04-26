
<%@ page import="uk.ac.shu.webarch.mylistings.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.endTime}">
				<li class="fieldcontain">
					<span id="endTime-label" class="property-label"><g:message code="event.endTime.label" default="End Time" /></span>
					
						<span class="property-value" aria-labelledby="endTime-label"><g:fieldValue bean="${eventInstance}" field="endTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="event.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${eventInstance?.eventDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="event.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${eventInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="event.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${eventInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.startTime}">
				<li class="fieldcontain">
					<span id="startTime-label" class="property-label"><g:message code="event.startTime.label" default="Start Time" /></span>
					
						<span class="property-value" aria-labelledby="startTime-label"><g:fieldValue bean="${eventInstance}" field="startTime"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
