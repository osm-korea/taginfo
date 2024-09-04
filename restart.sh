#/bin/bash
export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"

/home/ubuntu/.gems/bin/bundle exec thin restart -C "/home/ubuntu/osm/taginfo/web/thin.yaml"
