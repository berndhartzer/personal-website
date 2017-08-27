#!/bin/bash

BUCKET=$1
PROFILE=$2

aws s3 sync . s3://$BUCKET/ --profile $PROFILE --acl public-read --cache-control "public, must-revalidate, proxy-revalidate, max-age=0" --exclude "*" --include "*.html" --include "*.css" --include "*.min"
aws s3 sync ./images s3://$BUCKET/images/ --profile $PROFILE --acl public-read --cache-control "public, must-revalidate, proxy-revalidate, max-age=0"
