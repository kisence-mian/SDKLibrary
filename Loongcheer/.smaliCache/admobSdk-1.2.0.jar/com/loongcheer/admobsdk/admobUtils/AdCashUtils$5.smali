.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$5;
.super Ljava/lang/Object;
.source "AdCashUtils.java"

# interfaces
.implements Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadIsInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad()V
    .registers 2

    .line 524
    const-string v0, "IS\u63d2\u9875\u5e7f\u544a\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 525
    # operator-- for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1210()I

    .line 526
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1200()I

    move-result v0

    if-gez v0, :cond_12

    .line 527
    const/4 v0, 0x0

    # setter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1202(I)I

    .line 529
    :cond_12
    return-void
.end method

.method public onLoadError(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 533
    # operator++ for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1208()I

    .line 534
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialSwitch()V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7dIS\u63d2\u9875\u5e7f\u544a\u9519\u8bef\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 537
    return-void
.end method
