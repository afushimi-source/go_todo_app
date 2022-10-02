echo "#Post data to task"
curl -i -X POST localhost:18000/tasks -d @./handler/testdata/add_task/ok_req.json.golden
echo "\n# Get data from task"
curl -i -X GET localhost:18000/tasks

echo "\n#Post data to user"
curl -X POST localhost:18000/register -d '{"name": "john", "password": "test", "role": "user"}'

echo "\n#Post login"
curl -X POST localhost:18000/login -d '{"user_name": "john", "password":"test"}' | jq