#!/usr/bin/env sh
echo "Job started: $(date)"
/usr/local/bin/domain-connect-dyndns --config /usr/src/app/settings.txt update --all
echo "Job finished: $(date)"
