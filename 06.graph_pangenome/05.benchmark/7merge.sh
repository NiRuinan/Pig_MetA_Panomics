#!/bin/bash

SURVIVOR merge sample_list.txt 10 3 1 1 0 50 sample.vcf

bcftools sort sample.vcf -O z -o sample.sort.vcf.gz

mv sample.sort.vcf.gz sample.vcf.gz

tabix -p vcf sample.vcf.gz