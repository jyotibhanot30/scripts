IFS=$'\t' read -ra names < <( aws iam list-users --query 'Users[*].UserName' --output text); for name in "${names[@]}"; do echo "$name";aws iam list-attached-user-policies --user-name "$name"; aws iam list-user-policies --user-name "$name"; done
