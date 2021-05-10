#!/bin/bash


JPD_URL=https://swampup301.jfrog.io


if [ -z "$JPD_URL" ]
then
     echo "provide your JFrog Platform Deployment Unit (Artifactory) URL"
     exit 1
fi

if [ -z "$ADMIN_USER" ]
then
     echo "No user. Default : admin user"
     ADMIN_USER=admin
fi

if [ -z "$ADMIN_PASS" ]
then
     echo "provide your Artifactory Admin API KEY or password"
     exit 1
fi

# create repo
echo "[ARTIFACTORY] creating repositories on Artifactory..."
echo "$ADMIN_USER:$ADMIN_PASS"

curl -XPATCH \
    -u $ADMIN_USER:$ADMIN_PASS \
    -H "Content-Type: application/yaml" -T repo.yaml \
    $JPD_URL/artifactory/api/system/configuration 



