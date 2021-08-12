.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$3:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;->this$3:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 6

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->payListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;

    if-eqz p1, :cond_18

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;->this$3:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1;->this$2:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1;->this$1:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;

    iget-object v2, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalGameOrderId:Ljava/lang/String;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6;->val$finalProductId:Ljava/lang/String;

    iget-object v3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$6$1$1$2;->val$message:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;->onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V

    :cond_18
    return-void
.end method
