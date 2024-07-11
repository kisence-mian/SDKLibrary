.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;)V
    .registers 4

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelPay(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_1b
    return-void
.end method

.method public onContinuePay()V
    .registers 5

    new-instance v0, Lokjoy/u/a;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 1
    const-string v1, "\u4e0b\u5355\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;->val$payModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;

    invoke-direct {v3, p0, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$7;Lokjoy/u/a;)V

    .line 3
    new-instance v0, Lokjoy/h/i0;

    invoke-direct {v0, v1, v2}, Lokjoy/h/i0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokjoy/h/k0;

    invoke-direct {v1, v3}, Lokjoy/h/k0;-><init>(Lokjoy/h/c;)V

    const-string v2, "https://sdk.ok-joy.com/common/?ct=pay&ac=product"

    invoke-static {v2, v0, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method
