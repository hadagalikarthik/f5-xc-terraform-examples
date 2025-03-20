#Project Global
project_prefix = "hk-xc-auto"
resource_owner = "karthik"

#XC Global
api_url = "https://treino.console.ves.volterra.io/api"
xc_tenant = "treino-ufahspac"
xc_namespace = "hk-namespace"

#XC LB
app_domain = "hk-f5xc-api.f5-hyd-xcdemo.com"
dns_origin_pool = "false" #Set to true if using an FQDN for the origin server
origin_server   = "IP or FQDN of your origin"
origin_port     = "Port of your origin"

#XC API Protection and Discovery
xc_waf_blocking = true
k8s_pool = true
serviceName = "crapi-web.crapi"
serviceport = "80"
xc_api_disc = true
xc_api_pro  = true
# xc_api_spec = ["path to your OAS in XC"]
xc_api_spec = ["https://treino.console.ves.volterra.io/api/object_store/namespaces/hk-namespace/stored_objects/swagger/crapi-swagger-ssrf-2/v1-25-01-21"]
#Enable API schema validation
xc_api_val = true
#Enable API schema validation on all endpoints
xc_api_val_all        = true
xc_api_val_properties = ["PROPERTY_QUERY_PARAMETERS", "PROPERTY_PATH_PARAMETERS", "PROPERTY_CONTENT_TYPE", "PROPERTY_COOKIE_PARAMETERS", "PROPERTY_HTTP_HEADERS", "PROPERTY_HTTP_BODY"]
#Validation Mode active for endpoint (false = skip)
xc_api_val_active = true
#Validation Enforment Type (only one of these should be set to true)
enforcement_block  = false
enforcement_report = true
#Allow access to unprotected endpoints
fall_through_mode_allow = false
#Enable API Validation custom rules
xc_api_val_custom = false
site_name = "hk-xc-api-ce"
eks_ce_site = "true"
user_site = "true"