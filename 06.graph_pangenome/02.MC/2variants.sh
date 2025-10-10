#!/bin/bash

vg deconstruct graph.gbz \
-P REF -C -a -r graph.snarls -t 48 \
| bgzip --threads 48 > variants.vcf.gz