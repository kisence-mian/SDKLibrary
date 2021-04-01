.class public Lcom/anythink/network/ks/KSATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:J

.field b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 173
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    invoke-static {}, Lcom/anythink/network/ks/KSATConst;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 32
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    const-string v1, "app_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    const-string v2, "position_id"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 37
    :cond_2c
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_3f

    .line 38
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "kuaishou app_id\u3001 app_name or position_id is empty."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 163
    :cond_3f
    :goto_3f
    return-void

    .line 42
    :cond_40
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    .line 45
    const-string v0, "0"

    .line 46
    if-eqz p3, :cond_ea

    const-string v1, "layout_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 47
    const-string v0, "layout_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 50
    :goto_5b
    const/4 v0, 0x0

    .line 51
    if-eqz p3, :cond_e8

    const-string v1, "video_sound"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 52
    const-string v1, "1"

    const-string v0, "video_sound"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    move v1, v0

    .line 55
    :goto_75
    const-string v0, "0"

    .line 56
    if-eqz p3, :cond_89

    const-string v2, "unit_type"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 57
    const-string v0, "unit_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :cond_89
    const/4 v2, 0x1

    .line 62
    if-eqz p3, :cond_9a

    .line 63
    :try_start_8c
    sget-object v3, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_99} :catch_bf

    move-result v2

    .line 69
    :cond_9a
    :goto_9a
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/anythink/network/ks/KSATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;)V

    .line 71
    new-instance v3, Lcom/kwad/sdk/protocol/model/AdScene;

    iget-wide v6, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    invoke-direct {v3, v6, v7}, Lcom/kwad/sdk/protocol/model/AdScene;-><init>(J)V

    .line 72
    iput v2, v3, Lcom/kwad/sdk/protocol/model/AdScene;->adNum:I

    .line 74
    const-string v2, "1"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 75
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getAdManager()Lcom/kwad/sdk/export/i/IAdRequestManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/ks/KSATAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/network/ks/KSATAdapter$1;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;)V

    invoke-interface {v0, v3, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager;->loadDrawAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V

    goto :goto_3f

    .line 66
    :catch_bf
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9a

    .line 106
    :cond_c4
    const-string v0, "1"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 107
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getAdManager()Lcom/kwad/sdk/export/i/IAdRequestManager;

    move-result-object v0

    new-instance v2, Lcom/anythink/network/ks/KSATAdapter$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/anythink/network/ks/KSATAdapter$2;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v0, v3, v2}, Lcom/kwad/sdk/export/i/IAdRequestManager;->loadFeedAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;)V

    goto/16 :goto_3f

    .line 135
    :cond_da
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getAdManager()Lcom/kwad/sdk/export/i/IAdRequestManager;

    move-result-object v0

    new-instance v2, Lcom/anythink/network/ks/KSATAdapter$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/anythink/network/ks/KSATAdapter$3;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {v0, v3, v2}, Lcom/kwad/sdk/export/i/IAdRequestManager;->loadNativeAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V

    goto/16 :goto_3f

    :cond_e8
    move v1, v0

    goto :goto_75

    :cond_ea
    move-object v4, v0

    goto/16 :goto_5b
.end method
