#/bin/bash
URL="https://taginfo.osm.kr/"

response=$(curl --write-out '%{http_code}' --silent --output /dev/null ${URL})
[[ $response == 500 ]] || [[ $response == 000 ]] && /home/ubuntu/osm/taginfo/restart.sh
