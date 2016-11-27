cd vote
sudo docker build -t patrocinio/vote_vote:test .
cd ../result
sudo docker build -t patrocinio/vote_result:test .
cd ../worker
sudo docker build -t patrocinio/vote_worker:test .

