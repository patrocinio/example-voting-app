cd vote
docker build -t patrocinio/vote_vote:test-${BUILD_NUMBER} .
cd ../result
docker build -t patrocinio/vote_result:test-${BUILD_NUMBER} .
cd ../worker
docker build -t patrocinio/vote_worker:test-${BUILD_NUMBER} .

