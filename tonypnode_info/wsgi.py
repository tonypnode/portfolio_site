"""
WSGI config for tonypnode_info project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

if os.environ.get('IS_PROD', '') == 'AWS':
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tonypnode_info.settings.prod')
else:
    #TODO Make sure this is needed, I don't think it is cuz wsgi should only hit from nginx
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tonypnode_info.settings.local_dev')

application = get_wsgi_application()
