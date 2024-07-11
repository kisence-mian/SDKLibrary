.class public Lokjoy/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lokjoy/j/c;


# direct methods
.method public constructor <init>(Lokjoy/j/c;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iput-object p2, p0, Lokjoy/j/b;->a:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lokjoy/j/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lokjoy/j/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    const/16 v0, 0x1f42

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1f43

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1f44

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1f45

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1f46

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1f47

    if-ne p1, v0, :cond_26

    goto :goto_3c

    :cond_26
    iget-object p1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_51

    :cond_3c
    :goto_3c
    new-instance v0, Lokjoy/t/a;

    iget-object v1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v1, v1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    iput-object p2, v0, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lokjoy/t/a;->show()V

    new-instance v1, Lokjoy/j/b$a;

    invoke-direct {v1, p0, p1}, Lokjoy/j/b$a;-><init>(Lokjoy/j/b;I)V

    .line 3
    iput-object v1, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    .line 4
    :goto_51
    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_6f

    new-instance p1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v0, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v0, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v1, v1, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {p2, p1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_6f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    .line 1
    iget-object v0, p0, Lokjoy/j/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lokjoy/j/b;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object p1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object p1, p1, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "\u652f\u4ed8\u94fe\u63a5\u4e3a\u7a7a"

    iget-object v0, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz v0, :cond_60

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v1, v1, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v2, v2, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    goto :goto_60

    :cond_4f
    new-instance v0, Lokjoy/j/e;

    invoke-direct {v0}, Lokjoy/j/e;-><init>()V

    iget-object v1, p0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v2, v1, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    iput-object v2, v0, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    iput-object p1, v0, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v1, v0, p1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    :cond_60
    :goto_60
    return-void
.end method
