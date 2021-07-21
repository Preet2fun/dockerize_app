Python-flask Simple App
This is a simple flash python api app:



# Prerequisites:
requirements.txt

# Getting Started
docker-compose up -d --build

# Then navigate use below api
curl -X POST -d '{"sentence": "Hi i am happy"}' -H 'Content-Type: application/json' http://localhost:5000/analyse/sentiment
curl -X POST -d '{"sentence": "Hi i am not happy"}' -H 'Content-Type: application/json' http://localhost:5000/analyse/sentiment


# Authors
Pratik Patel

# License
License#