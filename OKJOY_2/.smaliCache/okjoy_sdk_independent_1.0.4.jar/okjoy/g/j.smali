.class public Lokjoy/g/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lokjoy/g/i;


# direct methods
.method public constructor <init>(Lokjoy/g/i;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/g/j;->b:Lokjoy/g/i;

    iput-object p2, p0, Lokjoy/g/j;->a:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e38\u5ba2\u767b\u5f55\u5931\u8d25\uff0ccode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lokjoy/g/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_2d
    iget-object v0, p0, Lokjoy/g/j;->b:Lokjoy/g/i;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e38\u5ba2\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/okjoy/okjoysdk/callback/OkJoyInsideCallBackManager;->insideLoginListener:Lcom/okjoy/okjoysdk/callback/OkJoyCallback;

    if-eqz v0, :cond_58

    new-instance v1, Lcom/okjoy/okjoysdk/entity/response/OkJoyError;

    invoke-direct {v1, p1, p2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/callback/OkJoyCallback;->onFailure(Lcom/okjoy/okjoysdk/entity/response/OkJoyError;)V

    :cond_58
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;

    .line 1
    const-string v0, "\u6e38\u5ba2\u767b\u5f55\u6210\u529f"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lokjoy/g/j;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_14
    iget-object v0, p0, Lokjoy/g/j;->b:Lokjoy/g/i;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    new-instance v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;-><init>()V

    sget-object v1, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_VISITOR:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setLoginType(Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getRid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setUserId(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setUserName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setTime(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;->getVsign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setVsign(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setToken(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setAge(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getIsnew()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setIsNew(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/callback/OkJoyInsideCallBackManager;->insideLoginListener:Lcom/okjoy/okjoysdk/callback/OkJoyCallback;

    if-eqz p1, :cond_6d

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/callback/OkJoyCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_6d
    return-void
.end method
