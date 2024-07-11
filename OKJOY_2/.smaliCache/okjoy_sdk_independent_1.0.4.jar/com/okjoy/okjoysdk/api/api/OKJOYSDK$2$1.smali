.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->onPermissionsGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0ccode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " message = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p1, :cond_2c

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    invoke-direct {v0, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_2c
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;)V
    .registers 9

    const-string v0, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-boolean v1, Lokjoy/e/b;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    sput-boolean v2, Lokjoy/e/b;->b:Z

    sget-boolean v1, Lokjoy/e/b;->c:Z

    if-eqz v1, :cond_1e

    const-string v1, "\u5df2\u8c03\u7528\u767b\u5f55\uff0c\u521d\u59cb\u5316\u6210\u529f\uff0c\u518d\u6b21\u8c03\u7528\u767b\u5f55"

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;

    iget-object v3, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->login(Landroid/app/Activity;)V

    :cond_1e
    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->deviceActivate(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$200(Landroid/app/Activity;)V

    .line 1
    sget-object v1, Lokjoy/n/k$b;->a:Lokjoy/n/k;

    .line 2
    iget-object v3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;

    iget-object v4, v3, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$activity:Landroid/app/Activity;

    iget-object v3, v3, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->isAdvDebug()Z

    move-result v3

    if-eqz v1, :cond_ab

    if-nez v4, :cond_3b

    .line 3
    const-string v1, "TopOn SDK context is null"

    invoke-static {v1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    goto :goto_77

    :cond_3b
    iput-object v4, v1, Lokjoy/n/k;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TopOn SDK version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/anythink/core/api/ATSDK;->getSDKVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/anythink/core/api/ATSDK;->setNetworkLogDebug(Z)V

    new-instance v3, Lokjoy/n/e;

    invoke-direct {v3, v1, v4}, Lokjoy/n/e;-><init>(Lokjoy/n/k;Landroid/content/Context;)V

    .line 4
    new-instance v1, Lokjoy/n/b;

    invoke-direct {v1, v3}, Lokjoy/n/b;-><init>(Lokjoy/n/c;)V

    .line 5
    new-instance v3, Lokjoy/h/w0;

    invoke-direct {v3, v4}, Lokjoy/h/w0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lokjoy/h/x0;

    invoke-direct {v4, v1}, Lokjoy/h/x0;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=info&ac=advParams"

    invoke-static {v1, v3, v4}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    .line 6
    :goto_77
    iget-object v1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel$OkJoyDataModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel$OkJoyDataModel;->getIsantiaddiction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel$OkJoyDataModel;->getIsantiaddiction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    sput-boolean v2, Lokjoy/e/b;->e:Z

    const-string p1, "\u9632\u6c89\u8ff7\u5df2\u5f00\u542f"

    goto :goto_9b

    :cond_96
    const/4 p1, 0x0

    sput-boolean p1, Lokjoy/e/b;->e:Z

    const-string p1, "\u9632\u6c89\u8ff7\u5df2\u5173\u95ed"

    :goto_9b
    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->initListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;

    if-eqz p1, :cond_aa

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    invoke-direct {v1, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;->onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V

    :cond_aa
    return-void

    :cond_ab
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyInitResponseModel;)V

    return-void
.end method
