# This file is run by Azure App Service as entrypoint
# https://learn.microsoft.com/en-us/azure/app-service/configure-language-python#customize-startup-command

apt-get install libmagic-dev

# Set up CKAN Config File
# export CKAN_INI=ckan.ini
# ckan generate config ${CKAN_INI}

# ckan config-tool ${CKAN_INI} "SECRET_KEY=${CKAN_SECRET_KEY}"
# ckan config-tool ${CKAN_INI} "beaker.session.secret=${CKAN_BEAKER_SESSION_SECRET}"
# ckan config-tool ${CKAN_INI} "sqlalchemy.url = ${CKAN_SQLALCHEMY_URL}"
# ckan config-tool ${CKAN_INI} "ckan.redis.url = ${CKAN_CKAN_REDIS_URL}"
# ckan config-tool ${CKAN_INI} "solr_url = ${CKAN_SOLR_URL}"
# ckan config-tool ${CKAN_INI} "ckan.site_url = ${CKAN_SITE_URL}"

gunicorn --bind=0.0.0.0 --timeout 600 app:app
