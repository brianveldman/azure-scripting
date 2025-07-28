#Export Az Resources to JSON
Export-AzRuleData -OutputPath 'inflight/'

# Lets generate a PSRule report based on our exported AZ Resources JSON
Invoke-PSRule -InputPath '.\inflight\name.json' -Module 'PSRule.Rules.Azure' | Export-CSV './export/PSRule_Report.csv'
