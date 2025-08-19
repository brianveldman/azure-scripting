# Create a default file for AMBA policies using the latest release of the ALZ Library
New-ALZPolicyDefaultStructure -DefinitionsRootFolder .\Definitions -Type AMBA

# Sync the AMBA policies and assign to the "epac-dev" PAC environment.
Sync-ALZPolicyFromLibrary -DefinitionsRootFolder .\Definitions -Type AMBA -PacEnvironmentSelector "epac-dev"
