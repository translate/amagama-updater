project=pgadmin

language_mapping="af_ZA:af fr_FR:fr it_IT:it pl_PL:pl ru_RU:ru"

subproject[0]=pgadmin
repo[0]=git+git://git.postgresql.org/git/pgadmin3.git
layout[0]=nongnu
translation_dirs[0]=i18n

subproject[1]=www
repo[1]=git+git://git.postgresql.org/git/pgadmin-www.git
layout[1]=nongnu
translation_dirs[1]=locale

subprojet[2]=pgadmin4
repo[2]=https://git.postgresql.org/git/pgadmin4.git
layout[2]=nongnu
translation_dirs[2]=web/pgadmin/translations/
