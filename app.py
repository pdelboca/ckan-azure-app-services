# -*- coding: utf-8 -*-

import os
from logging.config import fileConfig as loggingFileConfig
from ckan.config.middleware import make_app
from ckan.cli import CKANConfigLoader

config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'ckan.ini')

loggingFileConfig(config_path)

config = CKANConfigLoader(config_path).get_config()

app = make_app(config)
