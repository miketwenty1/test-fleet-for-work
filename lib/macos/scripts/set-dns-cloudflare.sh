name: Ensure Cloudflare DNS is used
query: SELECT 1 FROM dns_resolver WHERE type = 'nameserver' AND address = '1.1.1.1'
critical: false
description: This device is not using Cloudflare DNS, which may lead...
platform: darwin
run_script:
  path: ../script/set-dns-cloudflare.sh
