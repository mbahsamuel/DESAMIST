# # create the bacekend bucket into which we will store our state file

# resource "aws_s3_bucket" "mybucket" {
#   bucket = "desamistbackend"
#   versioning {
#     enabled = true
#   }
#   server_side_encryption_configuration {
#     rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm     = "AES256"
#         }
#      }
#   }

# }

# # creating the dynamodb table which will help us lock this statefile
# resource "aws_dynamodb_table" "statelock" {
#     name = "state-lock"
#     billing_mode = "PAY_PER_REQUEST"
#     hash_key = "LockID"

#     attribute {
#       name = "LockID"
#       type = "S"
#     }
  
# }