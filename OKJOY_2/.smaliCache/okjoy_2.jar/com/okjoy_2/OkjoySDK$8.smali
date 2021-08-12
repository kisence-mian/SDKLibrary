.class Lcom/okjoy_2/OkjoySDK$8;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;


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

    .line 579
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 604
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u6fc0\u52b1\u56de\u8c03"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public onRewardedAdClosed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 609
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u88ab\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public onRewardedAdPlayClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 599
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u88ab\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public onRewardedAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 587
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u7ed3\u675f\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 592
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6fc0\u52b1\u5e7f\u544a\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v1}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 595
    return-void
.end method

.method public onRewardedAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 582
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$8;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u6fc0\u52b1\u5e7f\u544a\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 583
    return-void
.end method
