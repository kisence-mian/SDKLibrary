.class public final Lokjoy/h/x;
.super Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.source ""


# instance fields
.field public final synthetic a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    iput-object p3, p0, Lokjoy/h/x;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 4

    invoke-super {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v0

    iget-object v1, p0, Lokjoy/h/x;->b:Ljava/lang/String;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roleid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rolename"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getRoleLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rolelevel"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serverid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getVipLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viplevel"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lokjoy/h/x;->a:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->getScene()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create"

    if-ne v0, v1, :cond_d

    const-string v0, "https://sdk.ok-joy.com/common/?ct=role&ac=create"

    return-object v0

    :cond_d
    const-string v0, "https://sdk.ok-joy.com/common/?ct=role&ac=login"

    return-object v0
.end method
