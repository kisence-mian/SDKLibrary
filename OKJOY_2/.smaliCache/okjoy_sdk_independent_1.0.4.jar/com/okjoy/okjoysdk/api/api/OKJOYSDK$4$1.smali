.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->onContinue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

.field public final synthetic val$dialog:Lokjoy/u/a;

.field public final synthetic val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$dialog:Lokjoy/u/a;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/okjoy/okjoysdk/login/activity/OkJoyLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;)V
    .registers 5

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance v0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;-><init>()V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getLoginType()Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    move-result-object v1

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

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getLoginType()Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    move-result-object v1

    sget-object v2, Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;->LOGIN_TYPE_PHONE_CODE:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    if-ne v1, v2, :cond_50

    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel$OkJoyDataModel;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->setPhone(Ljava/lang/String;)V

    :cond_50
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

    if-eqz p1, :cond_72

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/callback/OkJoyCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_72
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$4$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyLoginResponseModel;)V

    return-void
.end method
