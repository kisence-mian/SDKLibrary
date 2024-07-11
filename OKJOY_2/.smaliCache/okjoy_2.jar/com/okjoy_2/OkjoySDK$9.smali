.class Lcom/okjoy_2/OkjoySDK$9;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;


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

    .line 614
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 640
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u88ab\u70b9\u51fb\u4e86"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public onInterstitialAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 645
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u88ab\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public onInterstitialAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "var1"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 622
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u7ed3\u675f\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 627
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u64ad\u653e\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-virtual {v1}, Lcom/okjoy_2/OkjoySDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 631
    return-void
.end method

.method public onInterstitialAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 617
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public onInterstitialAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 4
    .param p1, "model"    # Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    .line 635
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$9;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u63d2\u5c4f\u5e7f\u544a\u5c55\u793a"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 636
    return-void
.end method
