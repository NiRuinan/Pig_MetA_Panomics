#!/bin/bash

vg deconstruct 11_1.gfa \
    -P Duroc -C -a -t 48 \
| bgzip --threads 48 > 11_1.gfa.variants.vcf.gz