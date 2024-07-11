.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->onContinuePay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

.field public final synthetic val$dialog:Lokjoy/u/a;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->val$dialog:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5546\u54c1\u67e5\u8be2\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_4b

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object v2, v2, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_4b
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;)V
    .registers 5

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/okjoy/okjoysdk/pay/activity/OkJoyPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    const-string v2, "payModel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "productInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;

    iget-object p1, p1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;)V

    return-void
.end method
