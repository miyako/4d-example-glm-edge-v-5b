//%attributes = {"preemptive":"capable"}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	var $GLM : cs:C1710.GLM
	$GLM:=cs:C1710.GLM.new(\
		"Chat Result (LOCAL)"; \
		"Start Conversation"; \
		"Continue Conversation"; \
		"User Prompt")
	
	//%T-
	var $window : Integer
	$window:=Open form window:C675("TEST_LOCAL")
	DIALOG:C40("TEST_LOCAL"; $GLM; *)
	//%T+
	
End if 