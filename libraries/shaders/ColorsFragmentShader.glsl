<!DOCTYPE HTML >
<html  lang="en-GB-Brighton2018g">
 <head>
  <title>Blackboard Learn</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta id="request-method" name="request-method" content="GET">
  <meta name="author" content="Blackboard">
  <meta name="copyright" content="&copy; 1997-2018 Blackboard Inc. All Rights Reserved. US Patent No. 7,493,396 and 7,558,853. Additional Patents Pending.">
  <meta name="keywords" content="Blackboard">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now()])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1099.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
  <link rel="SHORTCUT ICON" type="image/x-icon" href="/ui/bb-icon2.ico">
     <link rel="stylesheet" type="text/css" href="/common/shared.css?v=3400.0.3-rel.33+7014650" id="css_0">
     <link rel="stylesheet" type="text/css" href="/themes/as_2015/theme.css?v=3400.0.3-rel.33+7014650" id="css_1">
     <link rel="stylesheet" type="text/css" href="/themes/as_2015/app_nav.css?v=3400.0.3-rel.33+7014650" id="css_2">
     <link rel="stylesheet" type="text/css" href="/webapps/videointegration/css/video-integration.css?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650" id="css_3">
          <style type="text/css">.topGlobalLinks a.home{background-image:url(/images/console/icons/home_0.gif)}.bottom-buttons-home a{background-image:url(/images/console/icons/home_0.gif);background-repeat:no-repeat;background-position:50% 0}.topGlobalLinks a.help{background-image:url(/images/console/icons/help_0.gif)}.bottom-buttons-help a{background-image:url(/images/console/icons/help_0.gif);background-repeat:no-repeat;background-position:50% 0}.topGlobalLinks a.logout{background-image:url(/images/console/icons/logout_0.gif)}.global-nav-bar .logout-link,.global-nav-bar .logout-link:hover,.global-nav-bar .logout-link:focus{background-image:url(/images/console/icons/logout_0.gif);background-repeat:no-repeat;background-position:50% 0}</style>
       <link rel="stylesheet" type="text/css" media="print" href="/ui/styles/print.css?v=3400.0.3-rel.33+7014650">
    <script type="text/javascript" src="/javascript/i18n.js?v=3400.0.3-rel.33+7014650"></script>
      <script language='javascript' type='text/javascript'>

var JS_RESOURCES = new Object();

function _init_bundle_JS_RESOURCES() {

    JS_RESOURCES['validation.email'] = 'A fully qualified email address (for example, info@blackboard.com) must be entered.';
    JS_RESOURCES['validation.radio.required'] = 'Make a selection to continue.';
    JS_RESOURCES['assessment.incomplete.confirm.backtrackProhibited.survey'] = 'The following questions may be incomplete:\n {0}\nClick cancel to return to the survey. Click OK to save the incomplete answer.';
    JS_RESOURCES['common.list.separator.comma'] = '{0}, {1}';
    JS_RESOURCES['active.filter.search.terms'] = 'Search Terms';
    JS_RESOURCES['validation.points.decimal.places.error.location'] = 'Point Values are limited to five decimal places: {0}.';
    JS_RESOURCES['validation.maximum_length.plural'] = 'Must not contain more than {1} characters: {0}.\nReduce the size of the input by {2} characters.';
    JS_RESOURCES['assessment.incomplete.confirm.backtrackProhibited'] = 'The following questions may be incomplete:\n {0}\nClick cancel to return to the test. Click OK to save the incomplete answer.';
    JS_RESOURCES['validation.multiSelect.minItems'] = 'Multiselect box should contain at least {0} number of items.';
    JS_RESOURCES['validation.cmp_field.required'] = 'A value must be provided for {0}\nwhen {1} field is not empty';
    JS_RESOURCES['warning.email'] = 'Email address is a recommended field. Users will be unable to use parts of the system without an email address.';
    JS_RESOURCES['validation.maximum_length.no_name.singular'] = 'Must not contain more than {0} characters.\nReduce the size of the input by one character.';
    JS_RESOURCES['validation.multiSelect.maxItems'] = 'Multiselect box should not contain more than {0} number of items.';
    JS_RESOURCES['validation.number'] = 'A valid numeric value must be entered: {0}.';
    JS_RESOURCES['portalmodule.section.remove'] = 'Delete: {0}?';
    JS_RESOURCES['show.helptext'] = 'Show Help Text';
    JS_RESOURCES['validation.date.required'] = 'A complete date value must be provided: {0}.';
    JS_RESOURCES['validation.password'] = 'Password cannot be empty or contain only spaces.';
    JS_RESOURCES['validation.mismatch'] = 'The values entered do not match: {0}.\nConfirm: {0}.';
    JS_RESOURCES['validation.percent'] = 'A valid per-cent value between 0 and 100 must be entered.';
    JS_RESOURCES['validation.maximum_length.no_name.plural'] = 'Must not contain more than {0} characters.\nReduce the size of the input by {1} characters.';
    JS_RESOURCES['field_name.substitute'] = '\'\'{0}\'\' input field';
    JS_RESOURCES['validation.invalid_value'] = 'Invalid numeric value provided: {0}.';
    JS_RESOURCES['validation.required'] = 'A value must be provided: {0}.';
    JS_RESOURCES['validate.alignment.missing.content'] = 'You selected alignments, but did not select any alignable content to copy.';
    JS_RESOURCES['active.filter.free.form.text.blank'] = 'Specify a value for the search text field';
    JS_RESOURCES['validation.system_role.reserve'] = '"bb" is not permitted at the beginning of a role ID.';
    JS_RESOURCES['validation.date_past'] = 'The end date cannot be earlier than the start date.';
    JS_RESOURCES['confirm.delete_item_value'] = 'This item {0} will be deleted. Continue?';
    JS_RESOURCES['validation.invalid_chars'] = 'Contains illegal characters: {0}.\nDelete these characters: {1}';
    JS_RESOURCES['hide.helptext'] = 'Hide Help Text';
    JS_RESOURCES['validate.range.lessthen.str'] = 'Less Than {0}';
    JS_RESOURCES['validate.login.invalid.username.or.pass'] = 'Enter a username and password.';
    JS_RESOURCES['validation.date_past.confirm'] = 'The time is in the past.\nContinue with this time?';
    JS_RESOURCES['validation.negative'] = 'A valid non-negative value must be entered: {0}.';
    JS_RESOURCES['validation.url'] = 'A valid URL (for example, http://www.myuniversity.ac.uk) must be entered.';
    JS_RESOURCES['validate.range.overlap'] = 'criteria ({0}) overlaps criteria ({1}).';
    JS_RESOURCES['validate.range.between.str'] = 'Between {0} and {1}';
    JS_RESOURCES['validation.portal.tool.items.remove'] = 'Delete: {0}?';
    JS_RESOURCES['validation.association.refresh.confirm'] = 'The associated items information might have been updated.\nClick \'OK\' to refresh the list or click \'Cancel\' to keep the current page.';
    JS_RESOURCES['validate.enrolloptions.error.codeconflict'] = 'The Access Code Enrolment option conflicts with the selection of {instructor} Led enrolment.';
    JS_RESOURCES['validation.points.decimal.places'] = 'Point Values are limited to five decimal places.';
    JS_RESOURCES['list.checkToSelectAllItems'] = 'Tick to select all items';
    JS_RESOURCES['validation.option.required'] = 'At least one option must be selected from the list.';
    JS_RESOURCES['active.filter.changed.alert'] = 'criteria now contain';
    JS_RESOURCES['vtbe.artifact.footer.validate.nameIfSaveArtifact'] = 'Specify a Name in order to Save as a Reusable Object.';
    JS_RESOURCES['validate.invalidate.number'] = 'Please input valid number instead of {0}.';
    JS_RESOURCES['validation.valid_course_id'] = 'Course ID contains illegal characters or multibyte characters.';
    JS_RESOURCES['assessment.incomplete.confirm'] = 'The following questions may be incomplete:\n {0}\nClick cancel to return to the test. Click OK to submit assessment.';
    JS_RESOURCES['validate.enrolloptions.error.nooption'] = 'Warning: Choose either the {instructor} Led or the Self-Enrolment option.';
    JS_RESOURCES['validation.date_equal'] = 'The start date cannot be equal to the end date.';
    JS_RESOURCES['validation.cmp_field.rejected'] = 'The {0} cannot be used without a corresponding {1} value.';
    JS_RESOURCES['validation.time.required'] = 'A complete time value must be provided: {0}.';
    JS_RESOURCES['validation.integer_number'] = 'A valid integer numeric value must be entered: {0}.';
    JS_RESOURCES['validation.maximum_length'] = 'Must not contain more than 255 characters';
    JS_RESOURCES['validate.enrolloptions.error.emailrequestconflict'] = 'The selected email enrolment option conflicts with the self-enrolment selection.';
    JS_RESOURCES['validate.range.morethen.str'] = 'More Than {0}';
    JS_RESOURCES['invalid_char.space'] = 'space';
    JS_RESOURCES['notification.submit'] = 'Action already submitted.\nWait until the action is complete.';
    JS_RESOURCES['validation.plain_text.confirm'] = 'To display equations correctly in this document, Smart Text or HTML format must be selected.\nClick \'OK\' to save in selected Plain Text format or click \'Cancel\' to select a new format.';
    JS_RESOURCES['validation.allow_negtive.percent'] = 'A valid per-cent value between -100 and 100 must be entered.';
    JS_RESOURCES['invalid_char.comma'] = 'comma';
    JS_RESOURCES['confirm.remove_item'] = 'This action is final and cannot be undone. Continue?';
    JS_RESOURCES['list.uncheckToDeselectAllItems'] = 'Untick to deselect all items';
    JS_RESOURCES['validation.maximum_length.singular'] = 'Must not contain more than {1} characters: {0}.\nReduce the size of the input by one character.';
    JS_RESOURCES['validation.rubric.decimalplaces'] = 'Too many decimal places. Maximum is five.';
    JS_RESOURCES['vtbe.artifact.footer.validate.saveLocationIfSaveArtifact'] = 'Specify a location for the Reusable Object.';
    JS_RESOURCES['validation.minimum_length'] = 'A minimum of {0} characters must be entered: {1}.';
    JS_RESOURCES['assessment.incomplete.confirm.survey'] = 'The following questions may be incomplete:\n {0}\nClick cancel to return to the survey. Click OK to submit assessment.';
    JS_RESOURCES['validation.image_type'] = 'Unknown image type: {0}. Image may not display correctly.';
    JS_RESOURCES['validate.invalidate.number.space'] = 'Space';

    JS_RESOURCES.getString = i18n_get_string;
    JS_RESOURCES.getFormattedString = i18n_get_formatted_string;

}

_init_bundle_JS_RESOURCES();

</script>
<script language='javascript' type='text/javascript'>

var LOCALE_SETTINGS = new Object();

function _init_bundle_LOCALE_SETTINGS() {

    LOCALE_SETTINGS['LOCALE_SETTINGS.ADDRESS_FIELD_ORDER'] = 'STREET_1 STREET_2 CITY STATE ZIP_CODE COUNTRY';
    LOCALE_SETTINGS['number_format.exponent'] = 'eE';
    LOCALE_SETTINGS['LOCALE_SETTINGS.YEAR_CHARACTER.03255'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN.2'] = '{1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_MONTH.03255'] = 'ddd';
    LOCALE_SETTINGS['BBI18N.SOLARIS_CHARSET'] = 'ISO8859-1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN.1'] = '{0}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.internal_date_format'] = 'dd/MM/yy';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_MONTH.03259'] = 'MMMM yyyy';
    LOCALE_SETTINGS['LOCALE_SETTINGS.TIME_ORDER.00519'] = 'HMP';
    LOCALE_SETTINGS['float.format'] = '^([0-9]{1,3}(\\,[0-9]{3})*(\\.[0-9]+)?|\\.[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.SORT_COLUMN'] = 'familyName';
    LOCALE_SETTINGS['LOCALE_SETTINGS.SHORT'] = '{1} {3}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_SHORT.02097'] = 'MON TUE WED THU FRI SAT SUN';
    LOCALE_SETTINGS['float.allow.negative.format'] = '^((([-]?[0-9]{1,3}(\\,[0-9]{3})*)|[-]?[0-9]*)(\\.[0-9]+)?|\\.[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TYPE'] = 'GREGORIAN';
    LOCALE_SETTINGS['LOCALE_SETTINGS.GIVEN_INITIAL_FAMILY_NAME'] = '{4} {3}';
    LOCALE_SETTINGS['efloat.format'] = '^[+-]?[0-9]*(\\.[0-9]+)?([eE][+-]?[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_WEEK.03260'] = 'd MMM[ yyyy]{\'&#8212;\'d MMM, yyyy}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_FULL.02100'] = 'January February March April May June July August September October November December';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NUMBERS_HIJRI_LOCALIZED.00521'] = 'NO';
    LOCALE_SETTINGS['LOCALE_SETTINGS.LONG'] = '{0} {1} {2} {3}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_FULL_HIJRI.02100'] = 'Muḥarram,Ṣafar,Rabīʿ\'al-Awwal,Rabīʿ\'ath-Thānī,Jumādā\'al-Ūlā,Jumādā\'ath-Thāniya,Rajab,Shaʿbān,Ramaḍān,Shawwāl,Dhū\'al-Qaʿda,Dhū\'al-Ḥijja';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_NAME.03169'] = 'ARIAL.TTF';
    LOCALE_SETTINGS['LOCALE_SETTINGS.WORK_FIELD_ORDER'] = 'JOB_TITLE DEPARTMENT COMPANY B_PHONE_1 B_PHONE_2 B_FAX';
    LOCALE_SETTINGS['LOCALE_SETTINGS.GREETING'] = 'Welcome, {1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_SHORT.00520'] = 'Jan Feb  Mar Apr  May Jun Jul Aug Sep Oct Nov Dec';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_SIZE.03168'] = '8';
    LOCALE_SETTINGS['number_format.thousands_sep'] = ',';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_WEEK.03256'] = 'ddd d/M';
    LOCALE_SETTINGS['LOCALE_SETTINGS.SHORT_SURNAME'] = '{3}, {1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.AM_PM.00522'] = 'AM PM';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DATE_ORDER.00519'] = 'DMY';
    LOCALE_SETTINGS['LOCALE_SETTINGS.PHONE_FIELD_ORDER'] = 'H_PHONE_1 H_PHONE_2 H_FAX M_PHONE';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_MIN.02099'] = 'MON TUE WED THU FRI SAT SUN';
    LOCALE_SETTINGS['LOCALE_SETTINGS.24HR_SUPPORT.03208'] = '1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_PATH.03170'] = 'C:/WINNT/Fonts';
    LOCALE_SETTINGS['LOCALE_SETTINGS.FIRST_DAY_OF_WEEK.03207'] = '1';
    LOCALE_SETTINGS['BBI18N.WINDOWS_CHARSET'] = 'ISO-8859-1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_SHORT_HIJRI.00520'] = 'Muḥarram,Ṣafar,Rabīʿ\'I,Rabīʿ\'II,Jumādā\'I,Jumādā\'II,Rajab,Shaʿbān,Ramaḍān,Shawwāl,Dhū\'al-Qaʿda,Dhū\'al-Ḥijja';
    LOCALE_SETTINGS['BBI18N.LINUX_CHARSET'] = 'iso88591';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_CHARACTER.03253'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_CHARACTER.03254'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN_ORDER'] = 'title,givenName,middleName,familyName,suffix,otherName';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_DAY.03258'] = 'dddd, d MMM, yyyy';
    LOCALE_SETTINGS['number_format.decimal_point'] = '.';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAYS.00521'] = '01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_FULL.02098'] = 'Monday Tuesday Wednesday Thursday Friday Saturday Sunday';
    LOCALE_SETTINGS['LOCALE_SETTINGS.date_display_pattern'] = 'DD/MM/YY';
    LOCALE_SETTINGS['LOCALE_SETTINGS.EXTENDED_SURNAME'] = '{3}';
    LOCALE_SETTINGS['thousand.sep.format'] = ',';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NUMBERS_HIJRI.00521'] = '0 1 2 3 4 5 6 7 8 9';
    LOCALE_SETTINGS['LOCALE_SETTINGS.ADDRESS_ORDER.07832'] = 'street,city,region,postal_code,country';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_DAY.03257'] = 'dddd d/M';

    LOCALE_SETTINGS.getString = i18n_get_string;
    LOCALE_SETTINGS.getFormattedString = i18n_get_formatted_string;

}

_init_bundle_LOCALE_SETTINGS();

</script>

      <script language='javascript' type='text/javascript'>

var LOCALE_SETTINGS = new Object();

function _init_bundle_LOCALE_SETTINGS() {

    LOCALE_SETTINGS['LOCALE_SETTINGS.ADDRESS_FIELD_ORDER'] = 'STREET_1 STREET_2 CITY STATE ZIP_CODE COUNTRY';
    LOCALE_SETTINGS['number_format.exponent'] = 'eE';
    LOCALE_SETTINGS['LOCALE_SETTINGS.YEAR_CHARACTER.03255'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN.2'] = '{1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_MONTH.03255'] = 'ddd';
    LOCALE_SETTINGS['BBI18N.SOLARIS_CHARSET'] = 'ISO8859-1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN.1'] = '{0}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.internal_date_format'] = 'dd/MM/yy';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_MONTH.03259'] = 'MMMM yyyy';
    LOCALE_SETTINGS['LOCALE_SETTINGS.TIME_ORDER.00519'] = 'HMP';
    LOCALE_SETTINGS['float.format'] = '^([0-9]{1,3}(\\,[0-9]{3})*(\\.[0-9]+)?|\\.[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.SORT_COLUMN'] = 'familyName';
    LOCALE_SETTINGS['LOCALE_SETTINGS.SHORT'] = '{1} {3}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_SHORT.02097'] = 'MON TUE WED THU FRI SAT SUN';
    LOCALE_SETTINGS['float.allow.negative.format'] = '^((([-]?[0-9]{1,3}(\\,[0-9]{3})*)|[-]?[0-9]*)(\\.[0-9]+)?|\\.[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TYPE'] = 'GREGORIAN';
    LOCALE_SETTINGS['LOCALE_SETTINGS.GIVEN_INITIAL_FAMILY_NAME'] = '{4} {3}';
    LOCALE_SETTINGS['efloat.format'] = '^[+-]?[0-9]*(\\.[0-9]+)?([eE][+-]?[0-9]+)?$';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_WEEK.03260'] = 'd MMM[ yyyy]{\'&#8212;\'d MMM, yyyy}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_FULL.02100'] = 'January February March April May June July August September October November December';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NUMBERS_HIJRI_LOCALIZED.00521'] = 'NO';
    LOCALE_SETTINGS['LOCALE_SETTINGS.LONG'] = '{0} {1} {2} {3}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_FULL_HIJRI.02100'] = 'Muḥarram,Ṣafar,Rabīʿ\'al-Awwal,Rabīʿ\'ath-Thānī,Jumādā\'al-Ūlā,Jumādā\'ath-Thāniya,Rajab,Shaʿbān,Ramaḍān,Shawwāl,Dhū\'al-Qaʿda,Dhū\'al-Ḥijja';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_NAME.03169'] = 'ARIAL.TTF';
    LOCALE_SETTINGS['LOCALE_SETTINGS.WORK_FIELD_ORDER'] = 'JOB_TITLE DEPARTMENT COMPANY B_PHONE_1 B_PHONE_2 B_FAX';
    LOCALE_SETTINGS['LOCALE_SETTINGS.GREETING'] = 'Welcome, {1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_SHORT.00520'] = 'Jan Feb  Mar Apr  May Jun Jul Aug Sep Oct Nov Dec';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_SIZE.03168'] = '8';
    LOCALE_SETTINGS['number_format.thousands_sep'] = ',';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_WEEK.03256'] = 'ddd d/M';
    LOCALE_SETTINGS['LOCALE_SETTINGS.SHORT_SURNAME'] = '{3}, {1}';
    LOCALE_SETTINGS['LOCALE_SETTINGS.AM_PM.00522'] = 'AM PM';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DATE_ORDER.00519'] = 'DMY';
    LOCALE_SETTINGS['LOCALE_SETTINGS.PHONE_FIELD_ORDER'] = 'H_PHONE_1 H_PHONE_2 H_FAX M_PHONE';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_MIN.02099'] = 'MON TUE WED THU FRI SAT SUN';
    LOCALE_SETTINGS['LOCALE_SETTINGS.24HR_SUPPORT.03208'] = '1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.REPORT_FONT_PATH.03170'] = 'C:/WINNT/Fonts';
    LOCALE_SETTINGS['LOCALE_SETTINGS.FIRST_DAY_OF_WEEK.03207'] = '1';
    LOCALE_SETTINGS['BBI18N.WINDOWS_CHARSET'] = 'ISO-8859-1';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_SHORT_HIJRI.00520'] = 'Muḥarram,Ṣafar,Rabīʿ\'I,Rabīʿ\'II,Jumādā\'I,Jumādā\'II,Rajab,Shaʿbān,Ramaḍān,Shawwāl,Dhū\'al-Qaʿda,Dhū\'al-Ḥijja';
    LOCALE_SETTINGS['BBI18N.LINUX_CHARSET'] = 'iso88591';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_CHARACTER.03253'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.MONTH_CHARACTER.03254'] = '';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NAME.COLUMN_ORDER'] = 'title,givenName,middleName,familyName,suffix,otherName';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_TITLE_FORMAT_DAY.03258'] = 'dddd, d MMM, yyyy';
    LOCALE_SETTINGS['number_format.decimal_point'] = '.';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAYS.00521'] = '01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31';
    LOCALE_SETTINGS['LOCALE_SETTINGS.DAY_FULL.02098'] = 'Monday Tuesday Wednesday Thursday Friday Saturday Sunday';
    LOCALE_SETTINGS['LOCALE_SETTINGS.date_display_pattern'] = 'DD/MM/YY';
    LOCALE_SETTINGS['LOCALE_SETTINGS.EXTENDED_SURNAME'] = '{3}';
    LOCALE_SETTINGS['thousand.sep.format'] = ',';
    LOCALE_SETTINGS['LOCALE_SETTINGS.NUMBERS_HIJRI.00521'] = '0 1 2 3 4 5 6 7 8 9';
    LOCALE_SETTINGS['LOCALE_SETTINGS.ADDRESS_ORDER.07832'] = 'street,city,region,postal_code,country';
    LOCALE_SETTINGS['LOCALE_SETTINGS.CALENDAR_COLUMN_FORMAT_DAY.03257'] = 'dddd d/M';

    LOCALE_SETTINGS.getString = i18n_get_string;
    LOCALE_SETTINGS.getFormattedString = i18n_get_formatted_string;

}

_init_bundle_LOCALE_SETTINGS();

</script>

         <script type="text/javascript" src="/javascript/cdn.js"></script>
    <script type="text/javascript" src="/groupjs/F54597F15CB064FB15769B4A25D2AFDE.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/javascript/titlebartagutils.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/javascript/dwr/engine.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/javascript/dwr/util.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/groupjs/DB08CD65D5F6377990215F13733EAC1F.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/javascript/ngui/breadcrumbs.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/webapps/bb-social-learning-bb_bb60/js/mybb.js?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/webapps/portal/overlay/welcomeOverlay.js?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/webapps/bb-gate-bb_bb60/js/tool_service.js?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/webapps/privacy-disclosure/js/cookieConsent.js?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/groupjs/18FA4C89599CC2D174EDEF1E02C1F761.js?v=3400.0.3-rel.33+7014650"></script>
    <script type="text/javascript" src="/webapps/bb-social-learning-bb_bb60/js/social.js?v=3400.0.3-rel.33+7014650_3400.0.3-rel.33+7014650"></script>
    </head>
  <body id="testid" >
  
<h1 class="hideoff hideFromQuickLinks">Open Quick Links</h1><div id=quick_links_wrap><a id=quick_links_lightbox_link href="#" onclick="quickLinks.lightboxHelper.toggleLightbox(); return false;" role=button aria-haspopup=true tabindex=1 title="Open&#x20;Quick&#x20;Links">Quick Links</a></div><div id=quickLinksLightboxDiv class=hideoff aria-hidden=true style="display:none"><div class=ax-content><div class=content-lite><div id=quick_links_landmarks_section><h2 class=hideFromQuickLinks>Page Landmarks</h2><ul class=shortcut-list id=quick_links_landmark_list></ul></div><div id=quick_links_headings_section><h2 class=hideFromQuickLinks>Content Outline</h2><ul class=shortcut-list id=quick_links_heading_list></ul></div></div><div id=quick_links_hotkeys_section class=legend><h2 class=hideFromQuickLinks>Keyboard Shortcuts</h2><ul class=keycombos id=quick_links_hotkey_list></ul></div></div></div><h1 class="hideoff hideFromQuickLinks"></h1><div class=global-nav-bar-wrap><div class=global-nav-bar-wrap-mobile-nav><button class="hamburger hamburger--squeeze" type=button><span class=hamburger-box><span class=hamburger-inner></span></span></button></div><div class="global-nav-bar logout"><a id="topframe.logout.label" href="/webapps/login/?action=logout" target=_top class="nav-link logout-link" title=Logout> Logout</a></div><div id=global-nav class=global-nav-bar role=navigation data-preview=false><div class=hideoff>Global Menu</div><a id=global-nav-link class="nav-link u_floatThis-right" href="#global-nav-flyout" aria-haspopup=true tabindex=1 accesskey=m role=navigation title="Open&#x20;Global&#x20;Navigation&#x20;menu"><img src="/images/ci/ng/default_profile_avatar.png" alt="" id=global-avatar dataToolTitle="User Avatar Image" class=global-top-avatar /> Peter Mcneil<span id=badgeTotal style="visibility: hidden" title=""><span class=hideoff id=badgeAXLabel>Activity Updates</span><span class=badge id=badgeTotalCount title=""></span></span><img src="/images/ci/mybb/arrowDown-topnav.png" alt="Expand Global Nav" id=global-toggle-img class=global-toggle /></a><div id=global-nav-flyout class=flyout-menu style="display: none;" role=application><ul id=bottomButtons class=bottom-buttons><li class=bottom-buttons-home><a id="topframe.home.label" href="http://studentcentral.brighton.ac.uk" target=_blank class=home title=Home role=menuitem> Home</a></li><li class=bottom-buttons-help><a id="topframe.help.label" href="#" onClick="globalNavigation.openHelpWindow('https://en-us.help.blackboard.com/Learn/Student');" class=help title=Help role=menuitem> Help</a></li></ul></div></div></div>
<!-- global_nav.jsp -->

<div id="globalNavPageNavArea">
    <table class="bouncer" summary="Top frame table" role="presentation">
      <tr>
        <td>
          <div class="topTabs bgBanner" id="topTabs">
  
            <div class="brandingImgWrap">
              <a href="https://studentcentral.brighton.ac.uk" target="_blank" title="studentcentral">
                <img  src="/branding/_1_1/sc_logo_cutout400.png"  alt="studentcentral" title="studentcentral" class="bannerImage"/>
</a>
            </div>
  
            <div class="tabWrapper-right">
              <H2 CLASS="hideoff">Top Frame Tabs</H2>
              <table class="appTabs transparent" id="appTabList" summary="Tab List table" role="presentation">
                <tr>
                 <td id="Home"  >
                      <a href="/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_493_1" TARGET="_top"><span>Home</span>
                        <span class="hideoff"> Tab 1 of 4</span>
                      </a>
                    </td>
                  <td id="Studies"  >
                      <a href="/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_491_1" TARGET="_top"><span>Studies</span>
                        <span class="hideoff"> Tab 2 of 4</span>
                      </a>
                    </td>
                  <td id="Personal"  >
                      <a href="/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_12_1" TARGET="_top"><span>Personal</span>
                        <span class="hideoff"> Tab 3 of 4</span>
                      </a>
                    </td>
                  <td id="Help"  >
                      <a href="/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_414_1" TARGET="_top"><span>Help</span>
                        <span class="hideoff"> Tab 4 of 4</span>
                      </a>
                    </td>
                  </tr>
              </table>
              <div class="clearfloats"></div>
            </div>
            </div>
        </td>
      </tr>
    </table>
  </div>

<div id="globalNavPageContentArea">

<div class="locationPane">
 <div id="contentPanel" class="contentPaneWide error ok">
    
  <div id="content" class="contentBox ">
   
<div id="pageTitleDiv" class="pageTitle clearfix ">

  
<div id="pageTitleBar" class='pageTitleIcon' tabindex="0">
  <img src="/images/ci/sets/set01/receipt_fail.gif" alt="" id="titleicon"><h1 id="pageTitleHeader" tabindex="-1" ><span id="pageTitleText">
  <span style="color:;">Not Found</span>  </span></h1>
        <span id="_titlebarExtraContent" class="titleButtons"></span>
</div>


</div>

      <div class="container  clearfix" id="containerdiv">
     <h2 class="hideoff">Content</h2>
     <div id="bbNG.receiptTag.content" tabindex="0">The specified resource was not found or you do not have permission to access it.</div><p><span class="receiptDate">Wednesday, 31 October 2018 11:48:17 o'clock GMT</span></p>


<p class="backLink">

  <a href="javascript:history.go(-1)"
                  >
    OK
  </a>

</p>

   </div>
   
  </div>
  
   </div>
</div>
</div>




  <script type="text/javascript">page.bundle.addKey('inlineconfirmation.close','Close');page.bundle.addKey('inlineconfirmation.refresh','Refresh');page.bundle.addKey('hidden.link.close.menu','End of menu. Click to return to associated item.');page.bundle.addKey('hidden.link.close.form','End of form. Click to return to associated item.');page.bundle.addKey('lightbox.loading','Loading...');page.bundle.addKey('yt.stopped','Stopped:');page.bundle.addKey('yt.playing','Playing:');page.bundle.addKey('yt.cued','Cued:');page.bundle.addKey('yt.buffering','Buffering:');page.bundle.addKey('yt.paused','Paused:');page.bundle.addKey('yt.ended','Ended:');page.bundle.addKey('yt.play','Play');page.bundle.addKey('yt.pause','Pause');page.bundle.addKey('yt.mute','Mute');page.bundle.addKey('yt.unmute','Unmute');page.bundle.addKey('lightbox.overlay','{0} has been opened as a lightbox overlaying the current page.');page.bundle.addKey('display.playerControls','Player Controls');page.bundle.addKey('display.videoPlayerControls','Video Player Controls');page.bundle.addKey('display.play','Play');page.bundle.addKey('display.stop','Stop');page.bundle.addKey('display.volumeUp','Volume Up');page.bundle.addKey('display.volumeDown','Volume Down');page.bundle.addKey('display.mute','Mute');page.bundle.addKey('display.videoStatus','Video Status');page.bundle.addKey('display.closePlayerControls','Close Player Controls');page.bundle.addKey('display.embeddedVideoPlayer','Embedded Video Player');page.bundle.addKey('display.of','of');page.bundle.addKey('display.view.on.flickr','View Photo on Flickr');page.bundle.addKey('mashups.content.data.msg','We are unable to display the mashup content. This happens if the system detects an invalid URL. Remove the mashup item and try again to resolve this issue.');page.bundle.addKey('contextmenu.frame.title','Menu frame');page.bundle.addKey('frameset.contentframe.title','Content');page.bundle.addKey('common.pair.paren','{0} ({1})');page.bundle.addKey('tool.activity.description','activity updates');page.bundle.addKey('accessDeniedMsg','Access Denied');</script>
  <script type='text/javascript'>globalNavigation.init(); Event.observe(window, 'resize', globalNavigation.onResize);</script>
  <script type="text/javascript">
    page.bundle.addKey('globalnav.menu.expand','Expand\x20Global\x20Nav');
    page.bundle.addKey('globalnav.menu.collapse','Collapse\x20Global\x20Nav');
  </script>
  
  <script type="text/javascript">
    page.bundle.addKey('quick_links.link.title','Navigate\x20to\x20element\x20\x7B1\x7D\x20of\x20type\x20\x7B2\x7D\x20in\x20\x7B0\x7D\x20frame');
    page.bundle.addKey('quick_links.lightbox_title','Quick\x20Links');
    page.bundle.addKey('quick_links.link_title','Open\x20Quick\x20Links');
    page.bundle.addKey('quick_links.hotkey.shift','Shift');
    page.bundle.addKey('quick_links.hotkey.control','Ctrl');
    page.bundle.addKey('quick_links.hotkey.alt','Alt');
    page.bundle.addKey('quick_links.hotkey.combination_divider','\x2B');
  </script>
  
  <script type="text/javascript">quickLinks.initialize( [ '' ] );</script>
  <script type="text/javascript">
  		            globalNavMenu.init( true );
  		          </script>
  		        
  <script type='text/javascript'> social.Profile.MY_PROFILE_TOOL_ID='BB-CORE_____myProfile'; social.Profile.MY_PROFILE_TOOL_URI='/webapps/bb-social-learning-bb_bb60/execute/mybb?cmd=display&toolId=BB-CORE_____myProfile&location='; </script>
 
   <script type="text/javascript">
   FastInit.addOnLoad( function()
   {
            if ( window.DWREngine )
       {
        try {DWREngine.beginBatch();} catch(ignore) {}
       } 
                welcomeOverlay.initOverlay();
                                                             tool_service.init ('300000', 'Suppress-Session-Timestamp-Update' );
                                                             if (typeof(initEditors) == 'function') { initEditors(); }; 
                                                             if (window['org'] && window['org']['owasp']) { org.owasp.esapi.ESAPI.initialize(); }; 
                                                             quickLinks.createHelper();
                                                                  if ( window.DWREngine )
       {
         try {DWREngine.endBatch();} catch(ignore) {}
       }
                          BrowserSpecific.registerListeners();
               });
   </script>
       <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29522259-1']);
  _gaq.push(['_setSessionCookieTimeout', 10800000]);
  _gaq.push(['_setVisitorCookieTimeout', 94608000000]);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-KF2W9J"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KF2W9J');</script>

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-57275151-1', 'auto');
ga('send', 'pageview');

</script>

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"errorBeacon":"bam.nr-data.net","licenseKey":"e99ceaa32b","agent":"","beacon":"bam.nr-data.net","applicationTime":37,"applicationID":"9623255","transactionName":"YlUEYhdYCkUAWhdfX1sfNUIXTBBFIFoXX19bHwRaBFoPVA5YEVIeQlUEVxVJFxgRVhFCUVkeFUIXTBBFT20CVHdHXxNGJFoQXw5X","queueTime":0}</script>
</body>
</html>
