
resource "aws_dynamodb_table" "remote-dynamodb-table" {
    name           = "terra-modules-table"
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "LockID"

    attribute {
        name = "LockID"
        type = "S"      # S means String
    }

    tags = {
        Name        = "terra-modules-table"
    }
}