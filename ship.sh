# Push the images
echo -- Shipping images version ${BUILD_NUMBER} --


docker login -u patrocinio -p Boch3ch4
docker push patrocinio/vote_vote:test-${BUILD_NUMBER}
docker push patrocinio/vote_result:test-${BUILD_NUMBER}
docker push patrocinio/vote_worker:test-${BUILD_NUMBER}
