# Week1 Note

### IAM 
除了云计算服务以外，Google Cloud 还提供了一组权限和角色，用以界定哪些人有权访问哪些资源

|  Role Name    | Permissions                                                                                                                                                                      |
|  ----         | ----                                                                                                                                                                             |
| roles/viewer  | Permissions for read-only actions that do not affect state, such as viewing (but not modifying) existing resources or data.                                                      |
| roles/editor  | All viewer permissions, plus permissions for actions that modify state, such as changing existing resources.                                                                     |
| roles/owner   | All editor permissions and permissions for the following actions: manage roles and permissions for a project and all resources within the project; set up billing for a project. |

### gcloud
'gcloud auth list'
