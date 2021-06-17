.class Lcom/facebook/FaceBook$1;
.super Ljava/lang/Object;
.source "FaceBook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FaceBook;->Init(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FaceBook;


# direct methods
.method constructor <init>(Lcom/facebook/FaceBook;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/FaceBook;

    .line 35
    iput-object p1, p0, Lcom/facebook/FaceBook$1;->this$0:Lcom/facebook/FaceBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .line 46
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    const-string v1, " Login Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/facebook/FaceBook$1;->this$0:Lcom/facebook/FaceBook;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Login Cancel"

    # invokes: Lcom/facebook/FaceBook;->SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/FaceBook;->access$000(Lcom/facebook/FaceBook;Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .line 53
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Login Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/facebook/FaceBook$1;->this$0:Lcom/facebook/FaceBook;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/facebook/FaceBook;->SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/FaceBook;->access$000(Lcom/facebook/FaceBook;Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .registers 6
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .line 39
    sget-object v0, Lcom/facebook/FaceBook;->LogTag:Ljava/lang/String;

    const-string v1, " Login Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/facebook/FaceBook$1;->this$0:Lcom/facebook/FaceBook;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "0"

    # invokes: Lcom/facebook/FaceBook;->SignResultResultCallBack(Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/FaceBook;->access$000(Lcom/facebook/FaceBook;Ljava/lang/Boolean;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/facebook/FaceBook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
