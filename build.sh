cd vote
docker build -t vote_vote:dev .
cd ../result
docker build -t vote_result:dev .
cd ../worker
docker build -t vote_worker:dev .

