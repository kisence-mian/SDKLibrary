.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->onSuccess(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

.field public final synthetic val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 7

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;

    invoke-direct {v2, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    .line 1
    new-instance v3, Lokjoy/h/e0;

    invoke-direct {v3, v0, v1}, Lokjoy/h/e0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokjoy/h/f0;

    invoke-direct {v1, v2}, Lokjoy/h/f0;-><init>(Lokjoy/h/c;)V

    const-string v2, "https://sdk.ok-joy.com/common/?ct=user&ac=info"

    invoke-static {v2, v0, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    .line 2
    :cond_2a
    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    # invokes: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showLoginBanner(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    invoke-static {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$500(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getVsign()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->val$model:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->loginListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;

    if-eqz v1, :cond_57

    invoke-interface {v1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    :cond_57
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_6a
    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult()Z

    move-result p1

    invoke-direct {v1, v2, p1, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;-><init>(ZZI)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->realNameListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;

    if-eqz p1, :cond_7e

    invoke-interface {p1, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkRealNameListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;)V

    :cond_7e
    return-void
.end method

.method public onLogout(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    # getter for: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$600(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->logout(Landroid/app/Activity;)V

    return-void
.end method
