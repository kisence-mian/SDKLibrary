.class Lcom/okjoy_2/OkjoySDK$7;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;


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

    .line 560
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$7;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    .line 574
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$7;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u4e2a\u4eba\u4e2d\u5fc3\u5df2\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    .line 568
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$7;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3\u6253\u5f00\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$7;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v0}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    .line 563
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$7;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u4e2a\u4eba\u4e2d\u5fc3\u6253\u5f00\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 564
    return-void
.end method
