# mta-upgrade-automation
+ __Install.sh__
Accepts IIB of the build to be deployed. 
Runs all pre-upgrade steps in one click

+ __1_create_catalog_source.sh__
Accepts IIB of the build to be deployed.
Creates respective catalog source

+ __2_create_namespace.sh__
Creates namespace `openshift-mta`.
No parameters are required

+ __3_create_operator_group.sh__
Creates operator group.
No parameters are required

+ __4_create_subscription_6.2.1.sh__
Requires `Manual` or `Auto` as a parameter.
Creates subscription that will install operator automatically or manually.
For upgrade usually `Manual` is required

+ __5_create_tackle_cr.sh__
Creates tackle CR, no parameters required

+ __cleanup.sh__
Deletes MTA resources