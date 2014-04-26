<%@ page import="uk.ac.shu.webarch.mylistings.Promoter" %>



<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promoterName', 'error')} ">
	<label for="promoterName">
		<g:message code="promoter.promoterName.label" default="Promoter Name" />
		
	</label>
	<g:textField name="promoterName" value="${promoterInstance?.promoterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promoterTelephone', 'error')} ">
	<label for="promoterTelephone">
		<g:message code="promoter.promoterTelephone.label" default="Promoter Telephone" />
		
	</label>
	<g:textField name="promoterTelephone" value="${promoterInstance?.promoterTelephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promterEmail', 'error')} ">
	<label for="promterEmail">
		<g:message code="promoter.promterEmail.label" default="Promter Email" />
		
	</label>
	<g:textField name="promterEmail" value="${promoterInstance?.promterEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="promoter.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${promoterInstance?.website}"/>
</div>

