--
--  Taginfo
--  
--  languages.sql
--

.bail ON

DROP TABLE IF EXISTS languages;

CREATE TABLE languages (
    code           VARCHAR,
    iso639_1       VARCHAR,
    english_name   VARCHAR,
    native_name    VARCHAR,
    wiki_key_pages INTEGER,
    wiki_tag_pages INTEGER
);

INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('ar',      'ar', 'Arabic', 'العربية');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('bg',      'bg', 'Bulgarian', 'български език');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('cz',      'cz', 'Czech', 'česky');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('da',      'da', 'Danish', 'dansk');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('de',      'de', 'German', 'Deutsch');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('en',      'en', 'English', 'English');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('es',      'es', 'Spanish', 'español');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('et',      'et', 'Estonian', 'eesti');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('fi',      'fi', 'Finish', 'suomi');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('fr',      'fr', 'French', 'français');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('he',      'he', 'Hebrew', 'עברית');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('hr',      'hr', 'Croatian', 'hrvatski');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('hu',      'hu', 'Hungarian', 'Magyar');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('it',      'it', 'Italian', 'Italiano');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('ja',      'ja', 'Japanese', '日本語');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('nl',      'nl', 'Dutch', 'Nederlands');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('no',      'no', 'Norwegian', 'Norsk');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('pl',      'pl', 'Polish', 'polski');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('pt',      'pt', 'Portuguese', 'Português');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('pt-br',   NULL, 'Brazilian Portuguese', 'Português do Brasil');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('ro',      'ro', 'Romanian', 'română');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('ro-md',   NULL, 'Moldovan', 'română (Moldova)');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('ru',      'ru', 'Russian', 'русский язык');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('sq',      'sq', 'Albanian', 'Shqip');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('sv',      'sv', 'Swedish', 'svenska');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('tr',      'tr', 'Turkish', 'Türkçe');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('uk',      'uk', 'Ukrainian', 'українська');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('zh',      'zh', 'Chinese', '中文');
INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('zh-hans', NULL, 'Chinese', '中文');
-- INSERT INTO languages (code, iso639_1, english_name, native_name) VALUES ('', '', '', '');

ANALYZE;

