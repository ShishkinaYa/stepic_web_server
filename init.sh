sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application

sudo ln -sf /home/box/web/etc/django.py /etc/gunicorn.d/django.py
sudo /etc/init.d/gunicorn restart
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi:application