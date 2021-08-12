.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/callback/OkJoyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/okjoy/okjoysdk/callback/OkJoyCallback<",
        "Lcom/okjoy/okjoysdk/user/OkJoyUserModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/entity/response/OkJoyError;)V
    .registers 4

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->loginListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;)V

    :cond_10
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 6

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->loginListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkLoginListener;

    if-eqz v0, :cond_48

    const-string v0, "\u767b\u5f55\u56de\u8c03\u6c47\u603b"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->userRegisterReport(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$300(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->preloadOnlineVerify(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lokjoy/e/b;->d:Z

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;

    invoke-direct {v1, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    .line 1
    sput-object p1, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lokjoy/a/d;

    invoke-direct {v3, p1, v0, v1}, Lokjoy/a/d;-><init>(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Landroid/app/Activity;Lokjoy/a/g$b;)V

    .line 2
    new-instance p1, Lokjoy/h/t;

    invoke-direct {p1, v0, v2}, Lokjoy/h/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/u;

    invoke-direct {v0, v3}, Lokjoy/h/u;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=realNameState"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_48
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$3;->onSuccess(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    return-void
.end method
