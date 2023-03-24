# Setup environment
```python
vnE_news_env\Scripts\activate.bat
pip install -r requirements.txt

```
# Install requirement
```python
!python manage.py makemigrations 
!python manage.py migrate 
!python manage.py runserver

```

# Start Command
```python
!python manage.py auto_update_news big/[small]

# or auto update with docker cron

!docker build -t cron-bot .
!docker run -it cron-bot

```


# Environment
1. APP_SECRET_KEY: Random sercret key
2. DB_URI: mongo database URI
3. DB_NAME: mongo database name

```
APP_SECRET_KEY=django-insecure-2yv#y@u5hn!9yfjqxwbz((++2!(gcn&#_#b0+j2e@)ga96c#$3
DB_URI=mongodb+srv://[username:password@]host1[:port1][,...hostN[:portN]][/[defaultauthdb][?options]]
DB_NAME=VnExpress_Clone
```