aws cloudformation create-stack --stack-name AppSyncDemo --template-body file://template.yaml --capabilities CAPABILITY_NAMED_IAM --parameters \
  ParameterKey=ProjectName,ParameterValue=MyProject \
  ParameterKey=Env,ParameterValue=dev

aws cloudformation update-stack --stack-name AppSyncDemo --template-body file://template.yaml --capabilities CAPABILITY_NAMED_IAM --parameters \
  ParameterKey=ProjectName,ParameterValue=MyProject \
  ParameterKey=Env,ParameterValue=dev  

aws appsync list-types --api-id egbyuactlfaxlayz4j2xhl2jpa --format SDL
aws appsync list-resolvers --api-id egbyuactlfaxlayz4j2xhl2jpa --type-name Query
aws appsync get-resolver --api-id egbyuactlfaxlayz4j2xhl2jpa --type-name Query --field-name getPost
