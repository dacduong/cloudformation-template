aws cloudformation create-stack \
--stack-name myteststack \
--template-body file://home/testuser/mytemplate.json \
--parameters ParameterKey=Parm1,ParameterValue=test1 ParameterKey=Parm2,ParameterValue=test2

aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE
CREATE_COMPLETE, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_COMPLETE... 

aws cloudformation describe-stacks --stack-name myteststack

aws cloudformation create-stack --stack-name myteststack --template-body file:///home/local/test/sampletemplate.json
aws cloudformation describe-stack-events --stack-name myteststack
aws cloudformation list-stack-resources --stack-name myteststack
aws cloudformation get-template --stack-name myteststack
aws cloudformation validate-template --template-url https://s3.amazonaws.com/cloudformation-templates-us-east-1/S3_Bucket.template
aws cloudformation validate-template --template-body file:///home/local/test/sampletemplate.json
aws cloudformation delete-stack --stack-name myteststack

aws cloudformation deploy --template /path_to_template/my-template.json --stack-name my-new-stack --parameter-overrides Key1=Value1 Key2=Value2

aws cloudformation package --template-file master.yaml --s3-bucket redacted --s3-prefix infra