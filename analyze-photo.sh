# curl -H "Content-Type: application/json" -H "Host: api.projectoxford.ai" -H "Ocp-Apim-Subscription-Key: XXX" -X POST -d '{ "url":"http://www.nordicstartupbits.com/wp-content/uploads/2015/11/next-conference.jpg" }' "https://api.projectoxford.ai/vision/v1.0/analyze?visualFeatures=Description"

old_endpoint="api.projectoxford.ai"
endpoint="westus.api.cognitive.microsoft.com"

if [ "$#" = "0" ]
then
	echo need parameter: PIC URL
	exit
fi

pic=$1
echo Analyzing image $pic

curl -H "Content-Type: application/json" -H "Host: $endpoint" -H "Ocp-Apim-Subscription-Key: XXX" -X POST -d "{ 'url':'$pic' }" "https://$endpoint/vision/v1.0/analyze?visualFeatures=Description"
