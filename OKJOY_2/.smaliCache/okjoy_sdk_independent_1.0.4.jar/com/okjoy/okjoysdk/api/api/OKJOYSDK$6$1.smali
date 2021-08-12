.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->onContinuePay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 14

    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 1
    const-string v0, "\u652f\u4ed8\u4e2d..."

    iput-object v0, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    # getter for: Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->access$600(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v3, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalProductId:Ljava/lang/String;

    iget-object v5, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalGameOrderId:Ljava/lang/String;

    iget-object v6, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleId:Ljava/lang/String;

    iget-object v7, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleName:Ljava/lang/String;

    iget-object v8, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalServerId:Ljava/lang/String;

    iget-object v9, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalServerName:Ljava/lang/String;

    iget-object v10, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalRoleLevel:Ljava/lang/String;

    iget-object v11, v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalExtraInfo:Ljava/lang/String;

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;

    invoke-direct {v0, p0, p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;Lokjoy/u/a;)V

    .line 3
    new-instance p1, Lokjoy/h/n0;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lokjoy/h/n0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lokjoy/h/o0;

    invoke-direct {v1, v0}, Lokjoy/h/o0;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=pay&ac=authenticationOrder"

    invoke-static {v0, p1, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method
