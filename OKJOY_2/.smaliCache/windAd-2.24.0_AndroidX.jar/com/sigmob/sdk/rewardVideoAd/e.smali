.class public Lcom/sigmob/sdk/rewardVideoAd/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/b$a;
.implements Lcom/sigmob/sdk/rewardVideoAd/f$a;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/rewardVideoAd/d;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/AdStatus;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/rewardVideoAd/f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private k:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Ljava/lang/String;)Z

    goto :goto_b

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/rewardVideoAd/e$4;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$3;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$3;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "server_error"

    const/4 p2, 0x0

    invoke-static {p1, p4, p5, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$2;

    invoke-direct {v0, p0, p5, p4, p3}, Lcom/sigmob/sdk/rewardVideoAd/e$2;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, p6, p7, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/rewardVideoAd/f;

    const-string v2, "play"

    if-nez v1, :cond_37

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interstitial object is null"

    invoke-direct {p0, p2, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    const-string p2, "interstitial class is null"

    invoke-static {v2, p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_37
    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v3, :cond_54

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adstatus is not ready"

    invoke-direct {p0, p2, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    invoke-static {v2, p1, v0, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_54
    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$9;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$9;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const-string v2, "askready"

    const-string v3, "1"

    invoke-static {v2, v3, p3, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7b

    :try_start_67
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ad_scene"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_75

    move-object v0, v2

    goto :goto_7b

    :catchall_75
    move-exception v2

    const-string v2, "get ad_scene fail"

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v2

    instance-of v3, v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_c9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_91

    move-object v3, v2

    check-cast v3, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v4, "_ADSCENE_"

    invoke-virtual {v3, v4, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c9

    move-object v3, v2

    check-cast v3, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_VMD5_"

    invoke-virtual {v3, v5, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_af
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v4, "_VURL_"

    invoke-virtual {v2, v4, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_af .. :try_end_c0} :catch_c1

    goto :goto_c9

    :catch_c1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "AD_UNIT_KEY"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "broadcastIdentifier"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p3}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_f7
    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p2, p3, v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$14;

    invoke-direct {v0, p0, p5, p3, p6}, Lcom/sigmob/sdk/rewardVideoAd/e$14;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p2, p1, p4, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v6, Lcom/sigmob/sdk/rewardVideoAd/e$15;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/rewardVideoAd/e$15;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, p4, v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v6, Lcom/sigmob/sdk/rewardVideoAd/e$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/rewardVideoAd/e$13;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/rewardVideoAd/e;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Ljava/util/Map;

    return-object p0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/rewardVideoAd/e$6;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 14

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_36

    iget p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:I

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-nez p1, :cond_2f

    new-instance p1, Lcom/sigmob/sdk/rewardVideoAd/f;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/rewardVideoAd/f;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-direct {p0, v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->d(Ljava/lang/String;)V

    invoke-direct {p0, v8, v2, v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3d
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object v9
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_118

    if-nez v9, :cond_5a

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    const-string v0, "server url is null"

    invoke-direct {p0, p1, v0, v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5a
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_campid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7b

    :cond_7a
    move-object v0, v2

    :goto_7b
    const-string v10, "init"

    if-nez v2, :cond_84

    if-eqz v0, :cond_82

    goto :goto_84

    :cond_82
    move-object v11, v10

    goto :goto_87

    :cond_84
    :goto_84
    const-string v0, "play"

    move-object v11, v0

    :goto_87
    iget v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsRequest ready_filters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "request"

    move-object v0, p0

    move-object v1, v11

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "request_scene_type"

    if-eqz v0, :cond_c4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->c:Lcom/sigmob/sdk/rewardVideoAd/a;

    goto :goto_ca

    :cond_c4
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->b:Lcom/sigmob/sdk/rewardVideoAd/a;

    :goto_ca
    invoke-virtual {v2}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isExpired"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v0, v1, p1, p0}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V

    iput v8, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adsRequest loadAdRequest = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], placementId = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_118
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/rewardVideoAd/e;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    return-object p0
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/e$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/rewardVideoAd/e$7;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_30

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_30

    const/4 v1, 0x1

    :cond_30
    :goto_30
    return v1
.end method

.method static synthetic d(Lcom/sigmob/sdk/rewardVideoAd/e;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object p0
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
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    return-object p0
.end method

.method private j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p1

    if-nez v1, :cond_18

    const-string v3, "video file not ready"

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_18
    if-nez p1, :cond_1f

    const-string v3, "endIndex file not ready"

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    :cond_1f
    if-eqz p1, :cond_24

    if-eqz v1, :cond_24

    move v0, v2

    :cond_24
    return v0

    :catchall_25
    move-exception p1

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ads"

    const-string v1, "adslot_id=?"

    const-string v2, "create_time DESC"

    invoke-static {p1, v1, v0, v2}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    instance-of v0, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 13

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    const-string v1, "0"

    const-string v2, "respond"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_3a

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "network"

    move-object v0, p0

    goto :goto_58

    :cond_3a
    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "request"

    :goto_58
    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 9

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const-string v2, "loadstart"

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->s:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 13

    const-string v0, "ad is null"

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v8

    :try_start_6
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-nez v1, :cond_29

    new-instance v1, Lcom/sigmob/sdk/rewardVideoAd/f;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/rewardVideoAd/f;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    iget-object v2, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    move-object v9, v1

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_4c
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v8

    const-string v2, "1"

    const-string v3, "respond"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$10;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$10;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V

    :cond_73
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_110

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

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9, v1, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_110

    :cond_a2
    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "0"

    const-string v3, "respond"

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_6 .. :try_end_d9} :catchall_da

    goto :goto_110

    :catchall_da
    move-exception v0

    move v4, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v7

    const-string v2, "0"

    const-string v3, "respond"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_110
    :goto_110
    return-void
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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v6

    const-string v2, "load"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v6

    const-string v1, "0"

    const-string v2, "loadend"

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->u:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-nez v0, :cond_8b

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_80
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 6

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6d

    :cond_d
    :try_start_d
    sget-object v0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/sigmob/sdk/a;->a:Lcom/sigmob/sdk/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/c;->a(Landroid/content/Context;)Lcom/sigmob/sdk/common/models/SigmobError;

    move-result-object v0

    if-eqz v0, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check loadAd error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const-string v1, "load"

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->commit()V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5c
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;)V

    :cond_69
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_6d
    :goto_6d
    const-string p1, "loadAd error loadAdRequest or placementId is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "placementId is null"

    invoke-direct {p0, p1, v1, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;)V
    .registers 7

    iget-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Z

    const-string v1, "play"

    if-eqz v0, :cond_27

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ad is playing"

    invoke-direct {p0, p2, v2, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    const/4 v0, 0x0

    new-instance v2, Lcom/sigmob/sdk/rewardVideoAd/e$1;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$1;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const-string p1, "current is Playing "

    invoke-static {v1, p2, p1, v0, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void

    :cond_27
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setLoad_id(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_5b

    :cond_3c
    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not ready adUnit"

    invoke-direct {p0, p2, v3, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    new-instance v2, Lcom/sigmob/sdk/rewardVideoAd/e$8;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e$8;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const-string p1, "adunit is null"

    invoke-static {v1, p2, p1, v0, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    :goto_5b
    return-void
.end method

.method public a(Lcom/sigmob/sdk/rewardVideoAd/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 10

    const-string v0, "onInterstitialLoaded() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->t:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v7

    const-string v2, "1"

    const-string v3, "loadend"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 13

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1e
    if-eqz p1, :cond_4a

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v8

    const-string v4, "play"

    move-object v2, p0

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Z

    const-string p1, "onVideoPlayFail() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/AdStatus;

    if-eqz v0, :cond_47

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v2, :cond_17

    goto :goto_47

    :cond_17
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/rewardVideoAd/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/rewardVideoAd/e;->j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x1

    return p1

    :cond_2a
    :goto_2a
    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v3, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v2, :cond_47

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    return v1
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 10

    const-string v0, "onInterstitialShown() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Z

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLoad_id()Ljava/lang/String;

    move-result-object v7

    const-string v3, "vopen"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/rewardVideoAd/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reward_last_crid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reward_last_campid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$11;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/rewardVideoAd/e$11;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_70
    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    const-string v0, "onInterstitialClicked() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdClicked(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const-string v0, "onInterstitialDismissed() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->f:Z

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/rewardVideoAd/f;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/sigmob/sdk/rewardVideoAd/f;->b()V

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_38

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/b;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/rewardVideoAd/b;-><init>(ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdClosed(Lcom/sigmob/sdk/rewardVideoAd/b;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    const-string v0, "onVideoComplete() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayComplete(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public g(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayStart(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    const-string p1, "onVideoSkip() called"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->b:Lcom/sigmob/sdk/rewardVideoAd/d;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/d;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->j:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reward_last_crid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reward_last_campid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    iget-object p1, p0, Lcom/sigmob/sdk/rewardVideoAd/e;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/e$12;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/rewardVideoAd/e$12;-><init>(Lcom/sigmob/sdk/rewardVideoAd/e;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    return-void
.end method
