.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$1;
.super Landroid/os/Handler;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 97
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ""

    packed-switch v0, :pswitch_data_72

    goto :goto_71

    .line 122
    :pswitch_b
    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->shutDownBannerAD()V
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$500()V

    goto :goto_71

    .line 118
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    .line 119
    .local v0, "bannerAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAd_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAdBannerCallBack()Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    move-result-object v3

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showBanner(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    invoke-static {v1, v2, v3}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$400(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V

    .line 120
    goto :goto_71

    .line 115
    .end local v0    # "bannerAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitial(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$300(Ljava/lang/String;)V

    .line 116
    goto :goto_71

    .line 111
    :pswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    .line 112
    .local v0, "interstiiialAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAd_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAdInterstitialCallBack()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    move-result-object v2

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    invoke-static {v1, v2}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$200(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    .line 113
    goto :goto_71

    .line 108
    .end local v0    # "interstiiialAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    :pswitch_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideo(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$100(Ljava/lang/String;)V

    .line 109
    goto :goto_71

    .line 104
    :pswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;

    .line 105
    .local v0, "showAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAd_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->getAdRewardedCallBack()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    move-result-object v2

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    invoke-static {v1, v2}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$000(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 106
    nop

    .line 128
    .end local v0    # "showAdBean":Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x11
        :pswitch_61
        :pswitch_4a
        :pswitch_3a
        :pswitch_23
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method
