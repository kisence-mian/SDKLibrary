.class interface abstract Lcom/qq/e/comm/pi/InnerPOFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract config(ILjava/lang/String;)V
.end method

.method public abstract getAPKDownloadServiceDelegate(Landroid/app/Service;)Lcom/qq/e/comm/pi/SVSD;
.end method

.method public abstract getActivityDelegate(Ljava/lang/String;Landroid/app/Activity;)Lcom/qq/e/comm/pi/ACTD;
.end method

.method public abstract getExpressRewardVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/RVADI2;
.end method

.method public abstract getGDTApkDelegate(Lcom/qq/e/ads/dfa/IGDTApkListener;)Lcom/qq/e/comm/pi/DFA;
.end method

.method public abstract getHybridAD(Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)Lcom/qq/e/comm/pi/HADI;
.end method

.method public abstract getNativeAdManagerDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NUADI;
.end method

.method public abstract getNativeExpressADDelegate(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEADI;
.end method

.method public abstract getNativeExpressADDelegate2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEIADI;
.end method

.method public abstract getNativeExpressADView(Lcom/qq/e/comm/pi/NEADI;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)Lcom/qq/e/comm/pi/NEADVI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/pi/NEADI;",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lcom/qq/e/ads/nativ/ADSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/qq/e/comm/pi/NEADVI;"
        }
    .end annotation
.end method

.method public abstract getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;
.end method

.method public abstract getRewardVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/RVADI;
.end method

.method public abstract getUnifiedBannerViewDelegate(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)Lcom/qq/e/comm/pi/UBVI;
.end method

.method public abstract getUnifiedInterstitialADDelegate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)Lcom/qq/e/comm/pi/UIADI;
.end method
