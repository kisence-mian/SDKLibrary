.class public Lcom/sigmob/sdk/rewardVideoAd/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/l;
.implements Lcom/sigmob/sdk/rewardVideoAd/g;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/rewardVideoAd/d;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/AdStatus;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/rewardVideoAd/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/sigmob/sdk/base/models/LoadAdRequest;


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Ljava/lang/String;)Z

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "request_id"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "9"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->P:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 12

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-nez v7, :cond_44

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v7, "interstitial class is null"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_43
    return-void

    :cond_44
    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_71

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v7, "adstatus is not ready"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_43

    :cond_71
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v7, "Check isReady is false"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_43

    :cond_a4
    const-string v1, "1"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->F:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v0, :cond_f4

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f4

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_VMD5_"

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/base/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e3
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_VURL_"

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e3 .. :try_end_f4} :catch_15b

    :cond_f4
    :goto_f4
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_128

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AD_UNIT_KEY"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "broadcastIdentifier"

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1, v0, p3}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_128
    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->l:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_166

    :try_start_131
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ad_scene"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_13d} :catch_160

    :goto_13d
    invoke-virtual {v7, v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, p2, p3, v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    :catch_15b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_f4

    :catch_160
    move-exception v0

    const-string v0, "get ad_scene fail"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_166
    move-object v0, v1

    goto :goto_13d
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/e$4;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$6;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    invoke-interface {v6, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    move-object v1, p4

    move v3, p3

    move-object v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_19
    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-nez v0, :cond_32

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/rewardVideoAd/f;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/rewardVideoAd/e;->d(Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    goto :goto_e

    :cond_3c
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_43
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getAdsUrl()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4a} :catch_5d

    move-result-object v7

    if-nez v7, :cond_65

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v0, v5}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    goto :goto_e

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    goto :goto_e

    :cond_65
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "reward_last_campid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_83
    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_8d

    if-eqz v1, :cond_119

    :cond_8d
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    :goto_93
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_scene_type"

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->c:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c3
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "isExpired"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v7, v0, v1, p1, p0}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsRequest loadAdRequest = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_109
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_scene_type"

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->b:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    :cond_119
    move-object v1, v2

    goto/16 :goto_93

    :cond_11c
    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_83
.end method

.method private b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/rewardVideoAd/e$7;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_31

    const/4 v0, 0x1

    :goto_2f
    move v2, v0

    goto :goto_b

    :cond_31
    move v0, v2

    goto :goto_2f
.end method

.method static synthetic d(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->l:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$5;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/rewardVideoAd/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    return-object v0
.end method

.method private j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v3

    if-nez v2, :cond_1e

    const-string v4, "video file not ready"

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_1e
    if-nez v3, :cond_25

    const-string v4, "endIndex file not ready"

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_25} :catch_2b

    :cond_25
    if-eqz v3, :cond_29

    if-nez v2, :cond_e

    :cond_29
    move v0, v1

    goto :goto_e

    :catch_2b
    move-exception v0

    move v0, v1

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 7

    invoke-static {}, Lcom/sigmob/sdk/base/a/a;->a()Lcom/sigmob/sdk/base/a/a;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "adslot_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "create_time DESC"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v1, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 9

    const/4 v1, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->e:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->s:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 13

    const/4 v9, 0x0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-nez v0, :cond_112

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/rewardVideoAd/f;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    :goto_26
    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_48
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4b} :catch_e1

    move-result v7

    :try_start_4c
    const-string v1, "1"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_79

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$1;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->insertToDB(Lcom/sigmob/sdk/base/a/m;)V

    :cond_79
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ad

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AD_UNIT_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "broadcastIdentifier"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_ad} :catch_10f

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/SigmobError;)V

    const-string v1, "0"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_e0} :catch_e1

    goto :goto_ad

    :catch_e1
    move-exception v0

    :goto_e2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "0"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    goto :goto_ad

    :catch_10f
    move-exception v0

    move v3, v7

    goto :goto_e2

    :cond_112
    move-object v8, v0

    goto/16 :goto_26
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialFailed() called with: errorCode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "0"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->f:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->u:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_96

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_8b
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    const-string v0, "loadAd error loadAdRequest or placementId is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/base/models/SigmobError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;)V

    :cond_25
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_17
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;)V
    .registers 11

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Z

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v7, "current is Playing "

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setLoad_id(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_2c

    :cond_42
    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v7, "adunit is null"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2c
.end method

.method public a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 16

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "0"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/SigmobError;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/e$8;->a:[I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v6

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v9

    move-object v5, p0

    move-object v8, p3

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v6

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v9

    move-object v3, p0

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_6a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    return-void

    :pswitch_71
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->G:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v6

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v9

    move-object v3, p0

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6a

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_71
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/rewardVideoAd/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 9

    const-string v0, "onInterstitialLoaded() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->t:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    const-string v1, "1"

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->f:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b()V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1e
    if-eqz p1, :cond_4a

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/e;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Z

    const-string v0, "onVideoPlayFail() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/AdStatus;

    if-eqz v0, :cond_17

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v2, :cond_19

    :cond_17
    move v0, v1

    goto :goto_8

    :cond_19
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v3

    if-nez v3, :cond_48

    :cond_29
    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v3, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v2, :cond_46

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move v0, v1

    goto :goto_8

    :cond_48
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 9

    const-string v0, "onInterstitialShown() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Z

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_29
    const/4 v1, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->g:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->l:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_last_campid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/rewardVideoAd/e$2;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7a
    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string v0, "onInterstitialClicked() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdClicked(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const-string v0, "onInterstitialDismissed() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Z

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->b()V

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/b;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/rewardVideoAd/b;-><init>(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdClosed(Lcom/sigmob/sdk/rewardVideoAd/b;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string v0, "onVideoComplete() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayComplete(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayStart(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    const-string v0, "onVideoSkip() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->l:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_last_campid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/rewardVideoAd/e$3;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method
