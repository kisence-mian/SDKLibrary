.class Lcom/okjoy_2/OkjoySDK$2;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy_2/OkjoySDK;->sdk_listener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/okjoy_2/OkjoySDK;


# direct methods
.method constructor <init>(Lcom/okjoy_2/OkjoySDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/okjoy_2/OkjoySDK;

    .line 466
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$2;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    .line 475
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$2;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "OKJOY SDK init failure"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$2;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkInitCallBackModel;

    .line 469
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$2;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "OKJOY SDK init success"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$2;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SDK \u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    return-void
.end method
