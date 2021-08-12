.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->onSureButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

.field public final synthetic val$dialog:Lokjoy/u/a;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->val$dialog:Lokjoy/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance p1, Lokjoy/t/a;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    # getter for: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$600(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    iput-object p2, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;

    invoke-direct {v0, p0, p2}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;Ljava/lang/String;)V

    .line 3
    iput-object v0, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;)V
    .registers 4

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->val$dialog:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_d
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "\u652f\u4ed8\u6210\u529f"

    :cond_19
    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v0, Lokjoy/t/a;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    # getter for: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$600(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    iput-object p1, v0, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lokjoy/t/a;->show()V

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    invoke-virtual {p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;)V

    return-void
.end method
