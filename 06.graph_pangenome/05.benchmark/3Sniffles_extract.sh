#!/bin/bash

bcftools view -s sample_id multisample.vcf -O v -o sample_id.vcf
