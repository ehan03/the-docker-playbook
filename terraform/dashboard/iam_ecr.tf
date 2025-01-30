resource "aws_ecr_repository_policy" "tdp_dashboard_public_policy" {
  repository = aws_ecr_repository.tdp_dashboard_ecr.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action = [
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchCheckLayerAvailability",
          "ecr:BatchGetImage"
        ]
      }
    ]
  })
}