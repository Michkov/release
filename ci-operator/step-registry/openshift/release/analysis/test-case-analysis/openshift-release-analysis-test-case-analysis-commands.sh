#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

MINIMUM_SUCCESSFUL_COUNT=2
TEST_GROUP=install

echo
echo "********** Starting testcase analysis for:  aws-ovn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=aws \
	--network=ovn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/aws-ovn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  aws-sdn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=aws \
	--network=sdn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/aws-sdn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  aws-sdn-upi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=aws \
	--network=sdn \
	--infrastructure=upi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/aws-sdn-upi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  azure-ovn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=azure \
	--network=ovn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/azure-ovn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  gcp-sdn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=gcp \
	--network=sdn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/gcp-sdn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  vsphere-ovn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=vsphere \
	--network=ovn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/vsphere-ovn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  vsphere-ovn-upi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=vsphere \
	--network=ovn \
	--infrastructure=upi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/vsphere-ovn-upi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  vsphere-sdn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=vsphere \
	--network=sdn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/vsphere-sdn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  metal-ovn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=metal \
	--network=ovn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/metal-ovn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e

echo
echo "********** Starting testcase analysis for:  metal-sdn-ipi "
echo
set +e
job-run-aggregator analyze-test-case \
	--google-service-account-credential-file ${GOOGLE_SA_CREDENTIAL_FILE} \
	--payload-tag=${PAYLOAD_TAG} \
	--platform=metal \
	--network=sdn \
	--infrastructure=ipi \
	--minimum-successful-count=${MINIMUM_SUCCESSFUL_COUNT} \
	--job-start-time=${JOB_START_TIME} \
	--working-dir=${ARTIFACT_DIR}/metal-sdn-ipi \
	--timeout=4h30m \
	--test-group=${TEST_GROUP}
set -e
