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
# 命令详细说明

* gcloud compute 用于通过比 Compute Engine API 更简单的方式来管理 Compute Engine 资源。

* instances create 用于创建新实例。

* gcelab2 为虚拟机的名称。

* --machine-type 标志用于将机器类型指定为 n1-standard-2。

* --zone 标志用于指定虚拟机的创建位置。

* 如果您省略 --zone 标志，gcloud 工具可根据您的默认属性推断出您所需的可用区。如果您未在 create 命令中指定其他必需的实例设置（例如 machine type 和 image），则系统会将它们设为默认值。

```
查看所有默认值
gcloud compute instances create --help
```

```
gcloud链接ssh
gcloud compute ssh gcelab2 --zone us-central1-f
```

```
设置默认计算可用区
gcloud config set compute/zone us-central1-a
gcloud config set compute/region us-central1-a
查看
gcloud config get-value compute/zone
gcloud config get-value compute/region
```

```
查看项目信息
gcloud compute project-info describe --project <您的项目 ID>
```

### region & zone
region -> 区域
zone ->   可用区
![image](https://user-images.githubusercontent.com/31728012/150260923-a17ff1e5-9ddd-45b8-8ba0-1c851f7682e5.png)


### 创建实例
导航栏 -> Compute Engine ->虚拟机实力

建议参数(记得设置防火墙)
![image](https://user-images.githubusercontent.com/31728012/150261194-f2b84f4a-dccf-4c4b-bfae-147dc7e79999.png)




