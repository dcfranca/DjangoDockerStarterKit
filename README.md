# DjangoStarterKit
Use this as a base for a new project using  Docker + Django + Django-Rest-Framework + NGINX + UWSGI + Supervisor

## Quick Start
Clone this repository
Run `docker-compose up`
Wait until docker started
Go to your browser and type `localhost`
You should see a Django default start page
You can also go to `localhost/admin` and check the Django admin page

## Django App
The app is located at app/

There is already a requirements.txt containing Django/Django Rest Framework and Psycopg2

## Docker
There is already a Dockerfile and docker-compose file.
The Docker starts a ready for production nginx/supervisor service and can be used for deployment to Elastic Beanstalk (Docker option in AWS).

The docker-compose should only be used for development, it starts a postgresql container that communicates with the Django app.

## Collectstatic and migrations
They run automatically when the container starts.
