external_url 'http://gitlab.junyanginfo.com/'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')

# 发邮件配置
gitlab_rails['gitlab_email_from'] = 'jiewei@junyanginfo.com'
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.mxhichina.com"
gitlab_rails['smtp_port'] = 465
gitlab_rails['smtp_user_name'] = "jiewei@junyanginfo.com"
gitlab_rails['smtp_password'] = "jw_123456"
gitlab_rails['smtp_domain'] = "mxhichina.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = true
user['git_user_name'] = "GitLab"
user['git_user_email'] = "jiewei@junyanginfo.com"
