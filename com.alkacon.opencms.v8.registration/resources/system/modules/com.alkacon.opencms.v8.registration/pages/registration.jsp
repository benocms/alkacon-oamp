<%@page buffer="none" session="false" import="org.opencms.i18n.*,com.alkacon.opencms.v8.formgenerator.*, com.alkacon.opencms.v8.registration.*, java.util.*, org.opencms.util.*,org.antlr.stringtemplate.*" %><%

// initialize the form handler
CmsRegistrationFormHandler cms = (CmsRegistrationFormHandler)CmsFormHandlerFactory.create(pageContext, request, response, CmsRegistrationFormHandler.class.getName(), null);

// get the template to display
String template = cms.property("template", "search");
// include the template head
cms.include(template, "head");

cms.createForm();

// include the template foot
cms.include(template, "foot");
%>
