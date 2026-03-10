#Dispatcher Rule Validation

This is a simple AEM dispatcher rules for validating automatically using github actions.

##What it does

1. Defines dispatcher rules in 'filters.txt'
-/content/* and /apps/* are allowed
-/system/* then /bin/* and /secret/* is denied 
-Can add more rules as needed

2. Test Script('test_rules.sh') checks the rules
-Counts how many deny rules exists
-Confirms that /system/* then /bin/* and /secret/* paths are blocked.

3. GitHub Actions Workflow ('.github/workflows/validate.yml') runs automatically
-Triggered whenever you push changes to github
-Runs 'test-rules.sh' script
-Shows results in Actions tab logs
Click latest workflow run-> job->Run dispatcher validation step 
Logs show which rules are blocked/allowed

THEN CAN SEE THIS AS SHOWN BELOW:

Starting Dispatcher Rule Check
Deny rules found: 3
/system path is blocked
Dispatcher rule validation Completed


