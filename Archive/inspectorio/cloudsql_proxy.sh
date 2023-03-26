#!/bin/bash

# Create map of HOST-PORT: PRE_DATALAKE=[HOST: qwert, PORT: 1112]
PRE_DATALAKE=inspectorio-preprod:us-west1:inspectorio-preprod-datalake-v1
PRE_DATALAKE_PORT=5444

PRE_DATA=(inspectorio-preprod:us-west1:inspectorio-preprod-datalake-v1 5444)

  # cloud_sql_proxy -enable_iam_login -instances="${INSTANCE}" =tcp:${PORT}

echo "Starting Proxying..."
for config in PRE_DATA; do
  cloud_sql_proxy -enable_iam_login -instances="${config}[0]" =tcp:${PORT}[1]
done

