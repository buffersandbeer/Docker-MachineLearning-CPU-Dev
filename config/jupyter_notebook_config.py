from notebook.auth import passwd
import os

c = get_config()
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 8888
c.NotebookApp.open_browser = False
c.IPKernelApp.ipython_dir = u'/home/jupyter/.ipython'
c.Session.username = 'jupyter'
c.NotebookApp.notebook_dir = '/home/jupyter/'
c.NotebookApp.password = passwd(os.getenv('JUPYTER_PASSWORD', 'TempChangeMe!'))
