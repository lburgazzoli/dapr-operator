#!bin/sh

operator_dir="$1"
operator_bundle="$2"

tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
mkdir -p ${tmp_dir}/dapr

${operator_dir}/bin/opm generate dockerfile ${tmp_dir}/dapr

${operator_dir}/bin/opm init dapr-helm-operator \
    --default-channel=preview \
    --icon=${operator_dir}/hack/operator-icon.svg \
    --output yaml \
    > ${tmp_dir}/dapr/index.yaml

${operator_dir}/bin/opm render ${operator_bundle} \
    --output=yaml \
    > ${tmp_dir}/dapr/index.yaml