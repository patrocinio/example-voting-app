cd vote
docker build -t patrocinio/vote_vote:test .
cd ../result
docker build -t patrocinio/vote_result:test .
cd ../worker
docker build -t patrocinio/vote_worker:test .

