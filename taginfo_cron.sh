#!/bin/bash
set +e

export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"

echo "`date` Start"
/home/ubuntu/osm/data/download_pbf.sh > /dev/null 2>&1
/home/ubuntu/osm/data/download_osh.sh > /dev/null 2>&1
echo "The PBF files have downloaded."

set -e

/home/ubuntu/osm/taginfo/sources/update_all.sh /home/ubuntu/osm/taginfo/sources/files/
echo "The first update has done."
/home/ubuntu/osm/taginfo/sources/update_all.sh /home/ubuntu/osm/taginfo/sources/files/
echo "The second update has done."
/home/ubuntu/osm/taginfo/sources/move_db.sh /home/ubuntu/osm/taginfo/sources/files/
echo "The DB has set."

/home/ubuntu/osm/taginfo/restart.sh
echo "Done."
