# Push the images
docker login -u patrocinio -p Boch3ch4
docker push patrocinio/vote_vote:test
docker push patrocinio/vote_result:test
docker push patrocinio/vote_worker:test

# Remove the images
docker rmi patrocinio/vote_vote:test
docker rmi patrocinio/vote_result:test
docker rmi patrocinio/vote_worker:test

