# Taginfo

Brings together information about OpenStreetMap tags and makes it searchable
and browsable.

**Documentation:** See the
[Taginfo](https://wiki.openstreetmap.org/wiki/Taginfo) page at the OpenStreetMap
wiki.

**Live System:** [taginfo.osm.kr](https://taginfo.osm.kr/)

There is no versioning of these tools. The official site always runs the
version tagged `osmkr-taginfo-live`. If you are using the tools, we encourage
you to stay up-to-date with that version also. But monitor your setup closely
when you switch to a new version, sometimes things can break.

## Files

* `/sources`  - import scripts
* `/web`      - web user interface and API
* `/examples` - some misc example stuff


## Prerequisites

It uses:

* Ruby (must be at least 3.0)
* [Sinatra web framework](http://www.sinatrarb.com/) and other ruby libraries
* curl binary
* sqlite3 binary (version 3.9 or above with FTS5 and regexp support)
* Optional: Parallel bzip (pbzip2)

Install the Debian/Ubuntu packages:
```sh
$ sudo apt-get install curl sqlite3 sqlite3-pcre
$ sudo apt-get install ruby-passenger libapache2-mod-passenger
```

Install the Gems:
```sh
$ sudo gem install bundler
$ sudo bundle install
```

Depending on your setup you might want to install an application server like
* [uWSGI](https://uwsgi-docs.readthedocs.io/en/latest/) or
* Apache2 `mod_passenger` or
* [thin](https://github.com/macournoyer/thin)

If you want to create the taginfo database yourself, you need to have
https://github.com/taginfo/taginfo-tools installed. See there for details.
If you only want to run the UI and get the database from somewhere else,
you do not need this.


## Data Import

See [Taginfo/Installation](https://wiki.openstreetmap.org/wiki/Taginfo/Installation)
at OpenStreetMap's wiki.


## Web User Interface

You need a `/data` directory (in the parent directory of the directory where
this `README.md` is). It must contain the sqlite database files created in the
data import step or downloaded from page
[taginfo.openstreetmap.org/download](https://taginfo.openstreetmap.org/download).

To start the web user interface:

```sh
cd web
./taginfo.rb
```

You can also use it via [uWSGI](https://uwsgi-docs.readthedocs.io/en/latest/),

(On Debian install these packages: `uwsgi uwsgi-core uwsgi-plugin-rack-ruby3.1`.)

```sh
cd web
bundle exec uwsgi uwsgi.ini
```

You can change various settings in the [config file](web/uwsgi.ini) and use
it through a web server like Apache2 or Nginx.

You can do that via [thin](https://github.com/macournoyer/thin).
you should edit `myapp.site.com` txt file, from '/path/to/taginfo' to a proper path.

```sh
sudo cp myapp.site.com /etc/thin/
thin start -C /etc/thin/myapp.site.com
```

You can restart the instances via
```sh
thin restart -C /etc/thin/myapp.site.com
```




## Tests

There are a few tests for the Ruby code. Call `rake` in the `web` directory to
run the tests.


## Javascript

Taginfo uses the following Javascript libraries:
* [d3](https://d3js.org/)

All the Javascript and CSS needed is already included.


## Thanks

To the [many people](https://github.com/taginfo/taginfo/graphs/contributors)
helping with bug reports, code and translations.


## Contact

There is a mailing list for developers and people running their own instances
of taginfo:
[taginfo-dev](https://lists.openstreetmap.org/listinfo/taginfo-dev)


## Author

Jochen Topf (jochen@topf.org) - https://jochentopf.com/

