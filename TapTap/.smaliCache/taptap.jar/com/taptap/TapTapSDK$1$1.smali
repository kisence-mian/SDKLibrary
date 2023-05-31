.class Lcom/taptap/TapTapSDK$1$1;
.super Ljava/lang/Object;
.source "TapTapSDK.java"

# interfaces
.implements Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/TapTapSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/TapTapSDK$1;


# direct methods
.method constructor <init>(Lcom/taptap/TapTapSDK$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/TapTapSDK$1;

    .line 68
    iput-object p1, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v0, v0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    const-string v1, "TapTapSDK Log  onLoginCancel "

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v0, v0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    const-string v1, "TapTap"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "Cancel"

    # invokes: Lcom/taptap/TapTapSDK;->CallBackLoginResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/taptap/TapTapSDK;->access$100(Lcom/taptap/TapTapSDK;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V
    .registers 7
    .param p1, "globalError"    # Lcom/taptap/sdk/AccountGlobalError;

    .line 87
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v0, v0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapTapSDK Log  onLoginError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v0, v0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    invoke-virtual {p1}, Lcom/taptap/sdk/AccountGlobalError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapTap"

    const/4 v3, 0x0

    const-string v4, ""

    # invokes: Lcom/taptap/TapTapSDK;->CallBackLoginResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4, v1}, Lcom/taptap/TapTapSDK;->access$200(Lcom/taptap/TapTapSDK;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
    .registers 7
    .param p1, "accessToken"    # Lcom/taptap/sdk/AccessToken;

    .line 73
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v0, v0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapTapSDK Log  onLoginSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/taptap/sdk/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/taptap/sdk/AccessToken;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/taptap/sdk/AccessToken;->mac_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "typeString":Ljava/lang/String;
    iget-object v1, p0, Lcom/taptap/TapTapSDK$1$1;->this$1:Lcom/taptap/TapTapSDK$1;

    iget-object v1, v1, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    const-string v2, "TapTap"

    const/4 v3, 0x1

    const-string v4, ""

    # invokes: Lcom/taptap/TapTapSDK;->CallBackLoginResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/taptap/TapTapSDK;->access$000(Lcom/taptap/TapTapSDK;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
