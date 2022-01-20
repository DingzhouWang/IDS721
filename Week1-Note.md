# Week1 Note

## GCP

### IAM 
除了云计算服务以外，Google Cloud 还提供了一组权限和角色，用以界定哪些人有权访问哪些资源

|  Role Name    | Permissions                                                                                                                                                                      |
|  ----         | ----                                                                                                                                                                             |
| roles/viewer  | Permissions for read-only actions that do not affect state, such as viewing (but not modifying) existing resources or data.                                                      |
| roles/editor  | All viewer permissions, plus permissions for actions that modify state, such as changing existing resources.                                                                     |
| roles/owner   | All editor permissions and permissions for the following actions: manage roles and permissions for a project and all resources within the project; set up billing for a project. |

### gcloud

```
列出有效的帐号名称：
gcloud auth list

输出
Credentialed accounts:
 - <我的帐号>@<我的域名>.com (active)
```

```
列出项目 ID:
gcloud config list project

输出
Credentialed accounts:
 - <我的帐号>@<我的域名>.com (active)
```

```
gcloud创建实例
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone us-central1-f
```

```
查看所有默认值
gcloud compute instances create --help
```

```
gcloud链接ssh
gcloud compute ssh gcelab2 --zone us-central1-f
```

### region & zone
region -> 区域
zone ->   可用区
![image](https://user-images.githubusercontent.com/31728012/150260923-a17ff1e5-9ddd-45b8-8ba0-1c851f7682e5.png)


### 创建实例
导航栏 -> Compute Engine ->虚拟机实力

建议参数(记得设置防火墙)
![image](https://user-images.githubusercontent.com/31728012/150261194-f2b84f4a-dccf-4c4b-bfae-147dc7e79999.png)




