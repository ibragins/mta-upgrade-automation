#!/bin/bash
./1_create_catalog_source.sh $1
./2_create_namespace.sh
./3_create_operator_group.sh
./4_create_subscription.sh Manual
sleep 30
oc patch ip $(oc get ip --all-namespaces|egrep 'v6.0.3|rhsso'|awk '{print $2}') -n openshift-mta --type merge --patch '{"spec":{"approved":true}}'
./5_create_tackle_cr.sh

# Patching operator to upgrade from 6.0.Z to 6.1.Z
# oc patch sub mta-operator -n openshift-mta --type=merge -p '{"spec":{"channel":"stable-v'"$UPGRADE_CHANNEL_VERSION"'"}}'
