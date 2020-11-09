#!/usr/bin/env sh
echo "Job started: $(date)"
domain-connect-dyndns update --all
echo "Job finished: $(date)"
