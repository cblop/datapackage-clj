COVERALLS_URL='https://coveralls.io/api/v1/jobs'
CLOVERAGE_VERSION='1.0.9' lein cloverage -o cov --coveralls
curl -F 'json_file=@cov/coveralls.json' "$COVERALLS_URL"
echo "OUTPUT:"
cat /home/travis/build/cblop/datapackage-clj/cov/coveralls.json
