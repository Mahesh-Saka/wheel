
<%@ page import="th.ac.chula.bsd.wheel.UsageScore" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usageScore.label', default: 'UsageScore')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usageScore" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usageScore" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usageScore">
			
				<g:if test="${usageScoreInstance?.sType}">
				<li class="fieldcontain">
					<span id="sType-label" class="property-label"><g:message code="usageScore.sType.label" default="ST ype" /></span>
					
						<span class="property-value" aria-labelledby="sType-label"><g:fieldValue bean="${usageScoreInstance}" field="sType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usageScoreInstance?.uType}">
				<li class="fieldcontain">
					<span id="uType-label" class="property-label"><g:message code="usageScore.uType.label" default="UT ype" /></span>
					
						<span class="property-value" aria-labelledby="uType-label"><g:fieldValue bean="${usageScoreInstance}" field="uType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usageScoreInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="usageScore.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${usageScoreInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usageScoreInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usageScoreInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
