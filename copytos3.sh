
version=`head -200 /dev/urandom | cksum | cut -f1 -d " "`


aws s3 cp vatic.js s3://groundtruthnw/vaticjs/vatic-${version}.js --acl public-read
aws s3 cp dist/vatic-helper.js s3://groundtruthnw/vaticjs/dist/vatic-helper-${version}.js --acl public-read

echo $version