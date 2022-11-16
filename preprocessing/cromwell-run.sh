#!/usr/bin/env bash

set -ex

REF=2cdd19b082c601cc609aef5eb04430a5a7c901ef
WORKFLOW_URL="https://gitlab.com/intelliseq/workflows/-/raw/${REF}/src/main/wdl/pipelines/rna-seq/rna-seq.wdl"

java -Dconfig.file=preprocessing/cromwell-violet.cfg -jar ~/tools/cromwell-76.jar run "$WORKFLOW_URL" \
	--inputs preprocessing/inputs.json \
	--options preprocessing/cromwell-options.json
