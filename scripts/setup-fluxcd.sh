#!/bin/sh

flux bootstrap github \
    --owner=BachErik \
    --repository=infra-v2 \
    --branch=master \
    --personal \
    --components-extra=image-reflector-controller,image-automation-controller \
    --path=clusters/production
cat age.agekey | kubectl create secret generic sops-age -n flux-system --from-file=age.agekey=/dev/stdin