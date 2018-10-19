import os
from importlib import import_module

########################################
# This import the right settings module
# depending on your env var
########################################
module_name = os.environ.get('DJANGO_SETTINGS_MODULE')
module = import_module(module_name)

g = globals()
names = getattr(module, '__all__', None)
if names is None:
    names = [name for name in dir(module) if not name.startswith('_')]
for name in names:
    g[name] = getattr(module, name)
