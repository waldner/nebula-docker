#!/bin/bash


STATIC_HOST_MAP=$(
  awk -F% -v dq='"' '{
    for (i = 1; i <= NF; i++) {
      split($i, f, /,/)
      printf("  %s%s%s: [%s%s%s]\n", dq, f[1], dq, dq, f[2], dq)
    }
  }' <<< "${STATIC_HOST_MAP}"
)

LIGHTHOUSE_HOSTS=$(
  awk -F% -v dq='"' '{
    for (i = 1; i <= NF; i++) {
      printf("    - %s%s%s\n", dq, $i, dq)
    }
  }' <<< "${LIGHTHOUSE_HOSTS}"
)

envsubst < /config.yml.template > /config.yml
if [ "$AM_LIGHTHOUSE" != "true" ]; then
    sed -i 's/^##########//' /config.yml
fi

exec nebula -config /config.yml

