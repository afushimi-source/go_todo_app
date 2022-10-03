# register
curl -X POST localhost:18000/register -d '{"name": "john", "password": "test", "role": "admin"}'

# login
curl -X POST localhost:18000/login -d '{"user_name": "john", "password":"test"}' | jq

export TOKEN=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9eyJleHAiOjE2NjQ3OTk1OTIsImlhdCI6MTY2NDc5Nzc5MiwiaXNzIjoiZ2l0aHViLmNvbS9hZnVzaGltaS1zb3VyY2UvZ29fdG9kb19hcHAiLCJqdGkiOiI4OTQ4NWFhMi02NjAxLTQ1NzYtODQwYS02ZWE5ZmExMzA3NDIiLCJyb2xlIjoidXNlciIsInN1YiI6ImFjY2Vzc190b2tlbiIsInVzZXJfbmFtZSI6ImpvaG4ifQXv-uHo21v6zs9tAdB0Ew2BpyIV8D2ynvr11O4U1df5gRpPkPcppZSWCn9wKmNNtL-Cl_qOaQTPTyfyML2wo7xL1NAsDCIsVxInsjGNj1Pp9u2SNuUudT_ajGqXunUnMA5A-nsIaamfqRZAZhBSAjryTXF-l6PJl2gZWArG0cvA2euOef4EFPq8jEpoDZZD5UwMuRHB3Cc4BDaN2xcsUwGo_KTNYVOZncku4hfGyJXl766KDzoDumwbIomThsApvH3u5mp9MKdoUAVsDEoiu98jtP2MkpA-iVV89cgvFB5nBZ7SylOLO6tBu_fuHp7wATMCrAsSJF45y2DfJPZpTcDYt609BKgI733LldfeZ1WTqEPXGA440WBpVKNiAch2ogRPcxZMD7ebY2X9xl-BcQSYKo2GINX1j9d7VIYyf5Ztag4qtMlvGy6OKa8RWFCEPsuA0ylAisSZYm2rrZvw7kgkAxfJ_7wa6KDsqqKOIF3zgfAopL-fniD2QSGMpHMpyDstp_in5pNfgKMoiuW-N6A3HdA58-eYAJicg_oWykniz5aGsR3Lu8o0D6DjaIkfWYAChcjfSHOnLorIE6PrNGuVfgMcA9x-1f3NQNvOiu0Vd23EncR2B2FXYRX5HSCP5WnuFtzsNs28b42Ml1-nJxkvqX-G7ChUfb6f8IxLNTGBk

# add task
curl -XPOST -H "Authorization: Bearer $T" localhost:18000/tasks -d @./handler/testdata/add_task/ok_req.json.golden

# get tasks
curl -XGET -H "Authorization: Bearer $T" localhost:18000/tasks | jq

# is admin
curl -XGET -H "Authorization: Bearer $T" localhost:18000/admin
