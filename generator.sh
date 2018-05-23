URL=https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar
if [ ! -f ./swagger.jar ]; then
    wget $URL -O swagger.jar
fi

java -jar swagger.jar generate -i http://mongooseim.readthedocs.io/en/latest/rest-api/Client-frontend_swagger.yml -l php -c ./client-config.json -o ./
### No Swagger.io OpenAPI for metrics?
###java -jar swagger.jar generate -i http://mongooseim.readthedocs.io/en/latest/rest-api/Client-frontend_swagger.yml -l php -c ./metrics-config.json -o ./
java -jar swagger.jar generate -i https://mongooseim.readthedocs.io/en/latest/rest-api/Administration-backend_swagger.yml -l php -c ./admin-config.json -o ./
