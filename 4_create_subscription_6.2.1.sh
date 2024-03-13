#!/bin/bash
approval=$1
cat <<EOF | oc apply -f -
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: mta-operator
  namespace: openshift-mta
spec:
  channel: stable-v6.2
  installPlanApproval: $approval
  name: mta-operator
  source: redhat-operators
  sourceNamespace: openshift-marketplace
  startingCSV: mta-operator.v6.2.1
EOF
