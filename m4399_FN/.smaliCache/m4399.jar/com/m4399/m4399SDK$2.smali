.class Lcom/m4399/m4399SDK$2;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK;->Init(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m4399/m4399SDK;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/m4399/m4399SDK;

    .line 136
    iput-object p1, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const/4 v1, 0x0

    const-string v2, "onLoginCancel"

    const/4 v3, 0x0

    # invokes: Lcom/m4399/m4399SDK;->LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    invoke-static {v0, v3, v1, v2}, Lcom/m4399/m4399SDK;->access$100(Lcom/m4399/m4399SDK;ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/m4399/m4399SDK;->LoginResult(ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/m4399/m4399SDK;->access$100(Lcom/m4399/m4399SDK;ZLcom/ssjj/fnsdk/core/entity/SsjjFNUser;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 6
    .param p1, "user"    # Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    .line 149
    :try_start_0
    new-instance v0, Lcom/m4399/m4399SDK$HttpGetTask;

    iget-object v1, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/m4399/m4399SDK$HttpGetTask;-><init>(Lcom/m4399/m4399SDK;Lcom/m4399/m4399SDK$1;)V

    .line 150
    .local v0, "task":Lcom/m4399/m4399SDK$HttpGetTask;
    iput-object p1, v0, Lcom/m4399/m4399SDK$HttpGetTask;->user:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    .line 151
    new-instance v1, Lcom/m4399/m4399SDK$2$1;

    invoke-direct {v1, p0, p1}, Lcom/m4399/m4399SDK$2$1;-><init>(Lcom/m4399/m4399SDK$2;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    iput-object v1, v0, Lcom/m4399/m4399SDK$HttpGetTask;->callback:Lcom/m4399/m4399SDK$HttpCallback;

    .line 182
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK$HttpGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    .line 187
    nop

    .end local v0    # "task":Lcom/m4399/m4399SDK$HttpGetTask;
    goto :goto_32

    .line 184
    :catch_19
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoginSucceed error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/m4399/m4399SDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public onLogout()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "onLogout"

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v0}, Lcom/m4399/m4399SDK;->ExitGame()V

    .line 239
    return-void
.end method

.method public onLogoutException(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "onLogoutException"

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 4
    .param p1, "user"    # Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    .line 221
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "onSwitchUser"

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/m4399/m4399SDK$2;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v0}, Lcom/m4399/m4399SDK;->ExitGame()V

    .line 224
    return-void
.end method
