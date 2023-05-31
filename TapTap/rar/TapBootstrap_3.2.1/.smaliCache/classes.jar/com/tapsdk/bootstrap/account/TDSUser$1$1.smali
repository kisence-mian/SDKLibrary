.class Lcom/tapsdk/bootstrap/account/TDSUser$1$1;
.super Ljava/lang/Object;
.source "TDSUser.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/account/TDSUser$1;->onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/tapsdk/bootstrap/account/TDSUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/account/TDSUser$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/account/TDSUser$1;

    .line 371
    iput-object p1, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 395
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 387
    # getter for: Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->access$200()Lcn/leancloud/LCLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDSUser login Failed. cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/leancloud/LCLogger;->w(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;

    iget-object v0, v0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    if-eqz v0, :cond_34

    .line 389
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;

    iget-object v0, v0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    new-instance v1, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapsdk/bootstrap/exceptions/TapLoginFailError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapsdk/bootstrap/Callback;->onFail(Lcom/tapsdk/bootstrap/exceptions/TapError;)V

    .line 391
    :cond_34
    return-void
.end method

.method public onNext(Lcom/tapsdk/bootstrap/account/TDSUser;)V
    .registers 4
    .param p1, "tdsUser"    # Lcom/tapsdk/bootstrap/account/TDSUser;

    .line 379
    # getter for: Lcom/tapsdk/bootstrap/account/TDSUser;->logger:Lcn/leancloud/LCLogger;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->access$100()Lcn/leancloud/LCLogger;

    move-result-object v0

    const-string v1, "TDSUser login succeed"

    invoke-virtual {v0, v1}, Lcn/leancloud/LCLogger;->i(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;

    iget-object v0, v0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    if-eqz v0, :cond_16

    .line 381
    iget-object v0, p0, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->this$0:Lcom/tapsdk/bootstrap/account/TDSUser$1;

    iget-object v0, v0, Lcom/tapsdk/bootstrap/account/TDSUser$1;->val$callback:Lcom/tapsdk/bootstrap/Callback;

    invoke-interface {v0, p1}, Lcom/tapsdk/bootstrap/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 383
    :cond_16
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 371
    check-cast p1, Lcom/tapsdk/bootstrap/account/TDSUser;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/account/TDSUser$1$1;->onNext(Lcom/tapsdk/bootstrap/account/TDSUser;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 375
    return-void
.end method
