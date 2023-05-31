.class Lcom/taptap/sdk/IscTapLoginService$a$a;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"

# interfaces
.implements Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/IscTapLoginService$a;->a(Lcom/tds/common/reactor/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/common/reactor/Subscriber;

.field final synthetic b:Lcom/taptap/sdk/IscTapLoginService$a;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/IscTapLoginService$a;Lcom/tds/common/reactor/Subscriber;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->b:Lcom/taptap/sdk/IscTapLoginService$a;

    iput-object p2, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Login cancel"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->b:Lcom/taptap/sdk/IscTapLoginService$a;

    iget-object v0, v0, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->removeLoginResultCallbackByTag(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 4
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->b:Lcom/taptap/sdk/IscTapLoginService$a;

    iget-object p1, p1, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/taptap/sdk/TapLoginHelper;->removeLoginResultCallbackByTag(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    .line 3
    :cond_11
    invoke-virtual {p1}, Lcom/taptap/sdk/AccessToken;->toJsonString()Ljava/lang/String;

    move-result-object p1

    :goto_15
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->a:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 8
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a$a;->b:Lcom/taptap/sdk/IscTapLoginService$a;

    iget-object p1, p1, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/taptap/sdk/TapLoginHelper;->removeLoginResultCallbackByTag(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method
