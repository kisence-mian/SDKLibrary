.class public final Lokjoy/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final synthetic d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lokjoy/a/g$b;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Landroid/app/Activity;Lokjoy/a/g$b;)V
    .registers 4

    iput-object p1, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iput-object p2, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    iput-object p3, p0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lokjoy/a/d;->a:Z

    iput-boolean p1, p0, Lokjoy/a/d;->b:Z

    iput-boolean p1, p0, Lokjoy/a/d;->c:Z

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5b9e\u540d\u8ba4\u8bc1\u72b6\u6001\u5931\u8d25\uff1acode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0cmessage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz p1, :cond_29

    iget-object p2, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {p1, p2}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_29
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;

    .line 1
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_51

    iput-boolean v2, p0, Lokjoy/a/d;->b:Z

    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0, v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setReal(Z)V

    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v3, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getCname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setRealName(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v3, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getIdcard()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setIdCard(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-object v3, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getAge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setAge(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getAdult()I

    move-result v0

    if-ne v0, v2, :cond_43

    iput-boolean v2, p0, Lokjoy/a/d;->c:Z

    :cond_43
    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    iget-boolean v3, p0, Lokjoy/a/d;->c:Z

    invoke-virtual {v0, v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setAdult(Z)V

    iget-object v0, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    iget-object v3, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-static {v0, v3}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    :cond_51
    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameStateResponseModel$OkJoyDataModel;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    iput-boolean v2, p0, Lokjoy/a/d;->a:Z

    :cond_61
    sget-boolean p1, Lokjoy/e/b;->e:Z

    if-nez p1, :cond_9f

    iget-boolean p1, p0, Lokjoy/a/d;->b:Z

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz p1, :cond_fb

    goto :goto_b2

    :cond_6e
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    const-class v1, Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyRealNameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isLogin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lokjoy/a/d;->a:Z

    const-string v2, "isMust"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    new-instance p1, Lokjoy/a/a;

    invoke-direct {p1, p0}, Lokjoy/a/a;-><init>(Lokjoy/a/d;)V

    invoke-static {p1}, Lokjoy/g/v;->a(Lokjoy/g/v$a;)V

    goto :goto_fb

    :cond_9f
    iget-object p1, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result p1

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lokjoy/a/d;->e:Landroid/app/Activity;

    iget-object v0, p0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    .line 2
    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    .line 3
    iget-object p1, p0, Lokjoy/a/d;->f:Lokjoy/a/g$b;

    if-eqz p1, :cond_fb

    :goto_b2
    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-interface {p1, v0}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    goto :goto_fb

    :cond_b8
    iget-object p1, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result p1

    const-string v0, "1"

    if-eqz p1, :cond_c4

    move-object p1, v0

    goto :goto_c5

    :cond_c4
    move-object p1, v1

    :goto_c5
    iget-object v2, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result v2

    if-eqz v2, :cond_ce

    move-object v1, v0

    :cond_ce
    iget-object v0, p0, Lokjoy/a/d;->d:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lokjoy/a/c;

    invoke-direct {v2, p0}, Lokjoy/a/c;-><init>(Lokjoy/a/d;)V

    .line 4
    new-instance v3, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    invoke-direct {v3}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;-><init>()V

    const-string v4, "rid"

    invoke-virtual {v3, v4, v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "real"

    invoke-virtual {v3, v0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "adult"

    invoke-virtual {v3, p1, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lokjoy/a/g;->a(Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/e1;

    invoke-direct {v0, v2}, Lokjoy/h/e1;-><init>(Lokjoy/h/c;)V

    const-string v1, "http://real.ok-joy.com/time.php"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_fb
    :goto_fb
    return-void
.end method
