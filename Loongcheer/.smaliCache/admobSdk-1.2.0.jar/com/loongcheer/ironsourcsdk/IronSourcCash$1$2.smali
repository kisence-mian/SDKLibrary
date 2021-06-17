.class Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;
.super Ljava/lang/Object;
.source "IronSourcCash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;


# direct methods
.method constructor <init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    .line 136
    iput-object p1, p0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;->this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked()V
    .registers 1

    .line 195
    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 2

    .line 167
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$200()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onClose()V

    .line 168
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 151
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adIsCallBack:Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$100()Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;->onLoadError(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 152
    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 2

    .line 159
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$200()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onShow()V

    .line 160
    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 2

    .line 142
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adIsCallBack:Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$100()Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;->onLoad()V

    .line 144
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 176
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$200()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onShowAdError(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2$1;-><init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$2;)V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->loadInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;)V

    .line 188
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 1

    .line 203
    return-void
.end method
