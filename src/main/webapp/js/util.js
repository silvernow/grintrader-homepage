const js_reg_exp_password= /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?])|([!,@,#,$,%,^,&,*,?].*[a-zA-Z0-9])/;	
const js_reg_exp_email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
const js_reg_exp_mobile = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;

function fn_AjaxSubmitByJson(form, urlPath, actTxt) 
{
	var rtnData = "";
	var options = {
	    url         : urlPath,
	    contentType : "application/x-www-form-urlencoded;charset=utf-8",
	    type        : "POST",
	    async       : false,
	    dataType    : "json",
        beforeSend : function(xhr){
			if(actTxt == "LOAD"){
				$("#load-spinner").show();
			}
        },
        success: function(data) {
			if(data != null) {
				if (data["response"] == "FAIL"){
					if(actTxt == "INSERT"){
					}else if(actTxt == "UPDATE"){
					}else if(actTxt == "DELETE"){
					}else if(actTxt == "SELECT"){
					}
				} else if(data["response"] == "ETC") {
				} else if(data["response"] == "SUCCESS") {
					if(actTxt == "INSERT"){
					}else if(actTxt == "UPDATE"){
					}else if(actTxt == "DELETE"){
					}else if(actTxt == "SELECT"){
					}
				} else {
				}
			}
			rtnData = data;
        },
        error : function(data, textStatus, xhr) {
			if(actTxt == "LOAD"){
				$("#load-spinner").hide();
			}
        },
        complete : function(xhr, textStatus) {
			if(actTxt == "LOAD"){
				$("#load-spinner").hide();
			}
        }
    };
    $(form).ajaxSubmit(options);
    
    return rtnData;
}

function getContextPath() {
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function isNull(param){
	var ret;
	if( (param == "") || (param == null) || (param == 'null') || (param == 'NULL') || (param == 'undefined') || (param == undefined)){
		ret = "";
	}else{
		ret = $.trim(param);
	}
	return ret;
}
