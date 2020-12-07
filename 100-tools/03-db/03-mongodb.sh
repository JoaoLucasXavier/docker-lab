:'
1)docker run --name mongodb -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password -d mongo:4

2)Create new use and new database in mongodb:
    -> docker exec -it mongodb mongo --host localhost -u admin -p password --authenticationDatabase admin --eval "db.getSiblingDB('herois').createUser({user: 'lucasxavier', pwd: 'password', roles: [{role: 'readWrite', db: 'herois'}]})"

3) Mongodb client
    -> docker run --name mongoclient -p 3000:3000 --link mongodb:mongodb -d mongoclient/mongoclient
'
