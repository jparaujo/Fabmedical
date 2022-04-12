host="fabmedical-586241.mongo.cosmos.azure.com"
username="fabmedical-586241"
password="9uCzPUos96EHDCAyQilMWMetBDNTPoSHzoV8ApEiMj2ukEbw2TTfJaKT1sdlqu0MQd6GhxKjwCJxUCCZtja3sg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
