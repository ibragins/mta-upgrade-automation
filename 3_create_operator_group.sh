#!/bin/bash
cat <<EOF | oc apply -f -
apiVersion: operators.coreos.com/v1
kind: OperatorGroup
metadata:
  name: mta-operator
  namespace: openshift-mta
spec:
  targetNamespaces:
  - openshift-mta
EOF
