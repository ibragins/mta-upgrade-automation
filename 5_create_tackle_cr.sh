#!/bin/bash
cat <<EOF | oc apply -f -
kind: Tackle
apiVersion: tackle.konveyor.io/v1alpha1
metadata:
  name: tackle
  namespace: openshift-mta
spec:
  hub_bucket_volume_size: 80Gi
  hub_database_volume_size: 10Gi

EOF

