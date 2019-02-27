({
	doInit : function(component, event, helper) {
		
        var opts = [
              { "class": "optionClass", label: "Initiated", value: "opt1", selected: "true" },
              { "class": "optionClass", label: "Pending", value: "opt2" },
              { "class": "optionClass", label: "Completed", value: "opt3" }
              
          ];
        component.find("InputSelectDynamic").set("v.options", opts);
	}
})