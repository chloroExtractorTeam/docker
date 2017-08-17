#!/bin/bash

cd /data

wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/ERR/ERR202/ERR2026804/ERR2026804.sra

fastq-dump -X 2500000 --split-3 -v -L info ERR2026804.sra
