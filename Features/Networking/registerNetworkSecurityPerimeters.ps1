#Add Preview feature called NSP - Network Security Perimeters <3
Register-AzProviderFeature -FeatureName "AllowNSPInPublicPreview" -ProviderNamespace "Microsoft.Network"

#Re-register the Network Provider Namespace to use the NSP feature <3
Register-AzResourceProvider -ProviderNamespace "Microsoft.Network"
