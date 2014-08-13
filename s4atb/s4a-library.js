function QueryString(p_paramname) {
    p_paramname = p_paramname.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + p_paramname + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function closemodal() {
    var modalid = $.cookie("s4atb-modalid");
    $.cookie("s4atb-modalid", "")
    window.parent.$('#' + modalid ).modal('hide');   
}

function nl_s4a_bootstrap_modal_iframed(){
    
    var width         = this.action.attribute01
        , height      = this.action.attribute02
        , pagenumber  = this.action.attribute03
        , pageitem    = this.action.attribute04
        , valuetype   = this.action.attribute05
        , itemvalue   = this.action.attribute06
        , id          = this.action.attribute07
        , action      = this.action.attribute08
        , app_id      = this.action.attribute09
        , app_session = this.action.attribute10
        , app_debug   = this.action.attribute11
        , app_pf      = this.action.attribute12
        , url
        , theID;
		
	//How should we interpret the itemvalue?
    switch( valuetype ) {
        case "jQuery-selector":
        case "link-attribute":
            itemvalue = $(this.triggeringElement).attr( itemvalue );
            break;
        case "fixed value":
            itemvalue = itemvalue;
            break;
        default:
            itemvalue = "";
    }
    
    url = "f?p=" + app_id + ":" + pagenumber + ":" + app_session + "::" + app_debug + "::" + pageitem + ":" + itemvalue + ":" + app_pf + "&modalid=" + id;
    
	// destroy the current element
	$("#" + id).remove();
	
	// create a new element
	$('body').append("<div class='modal fade' id='" + id + "' tabindex='-1' role='dialog' aria-hidden='true'>"
					 + "<div class='modal-dialog'>"
					 + "<div class='modal-content iframe-content'>"
					 + "<iframe id='" + id + "iframe' class='modaliframe' allowtransparency='true' src='" + url + "' width='" + width + "' height='" + height + "'></iframe>"
					 + "</div><!-- /.modal-content -->"
					 + "</div><!-- /.modal-dialog -->"
					 + "</div><!-- /.modal fade -->");
						 
    // adjust the modal width
    $("#" + id + ' .modal-dialog').css('width', eval(eval(width) + 5) + 'px');
    // show the modal
    $("#" + id).modal({show:true});
}

// alter the pagination
function tbpaginate(p_regionid) {
    pagList = "#report_" + p_regionid.substring(1) + "_catch  ul.pagination";
    var newPag = "";
    
    
    $(pagList).children().each(
        function( index ) {
            switch( $(this).prop("tagName") ) 
            {
                case 'B':
                    newPag += "<li class='active'><a>" + $(this).html() + "</a></li>";
                    break;
                case 'A':
                    newPag += '<li><a href="'+$(this).attr("href")+'">' + $(this).html() + "</a></li>";
                    break;
                case 'LI':
                    newPag += "<li>" + $(this).html() + "</a></li>"
                    //alert($(this).html());
                    break;
                default:
                    alert('"' + $(this).prop("tagName") + '"');
                    alert($(this).html());
            }
        }
    );
    $(pagList).html(newPag);
}

$( document ).ready( 
    function() {
        //change all input type to bootstrap inputs with class "form-control"
        $("input,textarea,select").not("[type='checkbox']").addClass("form-control");
        
        //remove all classes from fieldset so default bootstrap CSS is back
        $("fieldset").removeClass();
        
        //change succes items to TB-succes
        $( ".has-success" ).each(function( index ) {
            //remove the class from the origional
            $(this).removeClass("has-success");
            
            //add the class to div with class "form-group"
            $(this).parent("div.form-group").addClass("has-success");
        });
        
        //change warning items to TB-warning
        $( ".has-warning" ).each(function( index ) {
            //remove the class from the origional
            $(this).removeClass("has-warning");
            
            //add the class to div with class "form-group"
            $(this).parent("div.form-group").addClass("has-warning");
        });
        
        //change error items to TB-error
        $( ".has-error" ).each(function( index ) {
            //remove the class from the origional
            $(this).removeClass("has-error");
            
            //add the class to div with class "form-group"
            $(this).parent("div.form-group").addClass("has-error");
        });
        
        // set InteractiveReport parent table to 100% width
        $("table.apexir_WORKSHEET_DATA").parents("table:first").css("width", "100%");
        
        // initiate tooltips
        $('[data-toggle="tooltip"]').tooltip();
        
        // initiate select lists
        $('.selectpicker').selectpicker();
        
        // initiate parsley if parsley-elements fount
        if( $('[parsley]').length > 0 ) {
            $('form').parsley();
        }
        
        // remember active tabs and active pills       
        var json, tabsState;
        $('a[data-toggle="pill"], a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
            var href, json, parentId, tabsState;
            tabsState = localStorage.getItem("tabs-state");
            
            json = JSON.parse(tabsState || "{}");
            parentId = $(e.target).parents("ul.nav.nav-pills, ul.nav.nav-tabs").attr("id");
            href = $(e.target).attr('href');
            json[parentId] = href;
            
            return localStorage.setItem("tabs-state", JSON.stringify(json));
        });
        
        tabsState = localStorage.getItem("tabs-state");
        json = JSON.parse(tabsState || "{}");
        
        $.each(json, function(containerId, href) {
            return $("#" + containerId + " a[href=" + href + "]").tab('show');
        });
        
        $("ul.nav.nav-pills, ul.nav.nav-tabs").each(function() {
            var $this = $(this);
            if (!json[$this.attr("id")]) {
                return $this.find("a[data-toggle=tab]:first, a[data-toggle=pill]:first").tab("show");
            }
        });
        

        // remember active accordion       
        var jsonAccordion, accordionState;
        $('.panel-collapse').on('shown.bs.collapse', function(e) {
            var panel, json, parentId, accordionState;
            accordionState = localStorage.getItem("accordion-state");
            
            json = JSON.parse(accordionState || "{}");
            parentId = $(e.target).parents("div.panel-group ").attr("id");
            panel = $(e.target).attr("id");
            json[parentId] = panel;
            
            return localStorage.setItem("accordion-state", JSON.stringify(json));
        });
        
        accordionState = localStorage.getItem("accordion-state");
        jsonAccordion = JSON.parse(accordionState || "{}");
        
        $.each(jsonAccordion, function(containerId, panel) {
            return $("#" + panel).collapse('show');
        });
        
    });