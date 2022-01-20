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
#### 命令详细说明

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

部分 Compute Engine 资源位于区域或地区内。区域是指您可以在其中运行资源的特定地理位置。每个区域都有一个或多个地区。例如，us-central1 区域表示美国中部的一个区域，该区域包含的地区有 us-central1-a、us-central1-b、us-central1-c 以及 us-central1-f。

![image](https://user-images.githubusercontent.com/31728012/150260923-a17ff1e5-9ddd-45b8-8ba0-1c851f7682e5.png)


### 创建实例
导航栏 -> Compute Engine ->虚拟机实力

建议参数(记得设置防火墙)
![image](https://user-images.githubusercontent.com/31728012/150261194-f2b84f4a-dccf-4c4b-bfae-147dc7e79999.png)


### Kubernetes
Google Kubernetes Engine (GKE) 提供了一个受管环境，您可以使用 Google 基础架构在其中部署、管理和调节容器化应用。Kubernetes Engine 环境包括多个机器（具体来讲，就是 Compute Engine 实例），这些机器组合在一起就形成了**容器集群**。在本实验中，您可以使用 GKE 亲身体验如何创建容器并部署应用。

运行 GKE 集群时，您还可以获享 Google Cloud 提供的高级集群管理功能所带来的好处，其中包括：
* 针对 Compute Engine 实例提供的负载平衡功能
* 节点池（可用于在集群中指定节点子集以提高灵活性）
* 自动扩缩集群的节点实例数量
* 自动升级集群的节点软件
* 节点自动修复，以保持节点的正常运行和可用性
* 利用 Cloud Monitoring 进行日志记录和监控，让您可以清楚了解自己集群的状况

```
运行以下命令，并将 [集群名称] 替换为您为该集群选择的名称（例如：my-cluster），以创建集群。
gcloud container clusters create [集群名称]

对集群进行身份验证, 创建集群后，您需要身份验证凭据才能与其交互
gcloud container clusters get-credentials [集群名称]

在 hello-app 容器映像中创建一个新的 Deployment 对象 hello-server：
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
PS:
此 Kubernetes 命令会创建一个代表 hello-server 的 Deployment 对象。在本例中，--image 指定了要部署的容器映像。该命令会从 Container Registry 存储分区中拉取示例映像。gcr.io/google-samples/hello-app:1.0 指定了要拉取的特定映像版本。如果未指定版本，则使用最新版本。

创建一个 Kubernetes Service（即一项将您的应用公开给外部流量的 Kubernetes 资源）：
kubectl expose deployment hello-server --type=LoadBalancer --port 8080
PS:
在此命令中：
--port 指定了该容器公开的端口。
type="LoadBalancer" 表示为您的容器创建一个 Compute Engine 负载平衡器。

可以通过下面命令以检查 hello-server Service
kubectl get service
并使用EXTERNAL-IP访问server

删除集群
gcloud container clusters delete [集群名称]
```


### 其他操作
可以在虚拟机上安装 NGINX 网络服务器。这是全球最受欢迎的网络服务器之一，可用来为您的虚拟机建立连接。

```
如需获取 SSH 终端的 root 访问权限，请运行以下命令：
sudo su -

以 root 用户的身份更新您的操作系统：
apt-get update

安装 NGINX：
apt-get install nginx -y

确认 NGINX 正在运行：
ps auwx | grep nginx

然后可以通过创建虚拟机实例的EXTERNAL_IP访问(如果没有nginx则无法访问外部IP)
```

### 设置网络及 HTTP 负载平衡器
[设置网络及 HTTP 负载平衡器](https://www.qwiklabs.com/focuses/12007?parent=catalog)
