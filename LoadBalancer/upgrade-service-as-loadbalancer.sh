#!/bin/bash

kubectl expose deployment ${APP} --port=${PORT} --target-port=${TARGET_PORT} \
        --name=${SERVICE_NAME} --namespace=${NAMESPACE} --type=LoadBalancer