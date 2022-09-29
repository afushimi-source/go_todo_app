echo "#Post data"
curl -i -X POST localhost:18000/tasks -d @./handler/testdata/add_task/ok_req.json.golden
echo "\n# Get"
curl -i -X GET localhost:18000/tasks