resource "aws_db_subnet_group" "mydb_subnet_group" {
  name       = "mydb-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "mydb" {
  identifier          = "mydb"
  engine              = "postgres"
  engine_version      = "12.7"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  storage_type        = "gp2"
  storage_encrypted   = true
  db_subnet_group_name = "mydb-subnet-group"

  name                = "mydatabase"
  username            = var.username
  password            = var.password
  publicly_accessible = true

  parameter_group_name = "default.postgres12"
}
