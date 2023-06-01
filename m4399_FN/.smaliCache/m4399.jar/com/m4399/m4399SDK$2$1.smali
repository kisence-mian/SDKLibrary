.class Lcom/m4399/m4399SDK$2$1;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/m4399/m4399SDK$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK$2;->onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m4399/m4399SDK$2;

.field final synthetic val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK$2;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 3
    .param p1, "this$1"    # Lcom/m4399/m4399SDK$2;

    .line 151
    iput-object p1, p0, Lcom/m4399/m4399SDK$2$1;->this$1:Lcom/m4399/m4399SDK$2;

    iput-object p2, p0, Lcom/m4399/m4399SDK$2$1;->val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HttpCallbackMethod(Ljava/lang/String;)V
    .registers 13
    .param p1, "result"    # Ljava/lang/String;

    .line 154
    const-string v0, "1"

    const-string v1, "role_1"

    iget-object v2, p0, Lcom/m4399/m4399SDK$2$1;->this$1:Lcom/m4399/m4399SDK$2;

    iget-object v2, v2, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoginSucceed result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 157
    :try_start_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_80

    .line 161
    iget-object v3, p0, Lcom/m4399/m4399SDK$2$1;->this$1:Lcom/m4399/m4399SDK$2;

    iget-object v3, v3, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    iget-object v5, p0, Lcom/m4399/m4399SDK$2$1;->val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    const-string v6, ""

    # invokes: Lcom/m4399/m4399SDK;->LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/m4399/m4399SDK;->access$100(Lcom/m4399/m4399SDK;ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/m4399/m4399SDK$2$1;->this$1:Lcom/m4399/m4399SDK$2;

    iget-object v4, v4, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v4}, Lcom/m4399/m4399SDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/m4399/m4399SDK$2$1;->val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logLoginFinish(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    const-string v4, "server_1"

    invoke-virtual {v3, v1, v1, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/m4399/m4399SDK$2$1;->val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v5

    const-string v6, "role_1"

    const-string v7, "role_1"

    const-string v8, "1"

    const-string v9, "1"

    const-string v10, "server_1"

    invoke-virtual/range {v5 .. v10}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v1, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 174
    :cond_80
    iget-object v0, p0, Lcom/m4399/m4399SDK$2$1;->this$1:Lcom/m4399/m4399SDK$2;

    iget-object v0, v0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    iget-object v1, p0, Lcom/m4399/m4399SDK$2$1;->val$user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/m4399/m4399SDK;->LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    invoke-static {v0, v4, v1, v3}, Lcom/m4399/m4399SDK;->access$100(Lcom/m4399/m4399SDK;ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_90} :catch_91

    .line 178
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_90
    goto :goto_95

    .line 176
    :catch_91
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_95
    return-void
.end method
