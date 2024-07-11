.class public Lcom/kwad/sdk/core/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/g/d$a;,
        Lcom/kwad/sdk/core/g/d$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/core/g/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/g/d;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/g/a/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/kwad/sdk/core/g/d$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/kwad/sdk/core/g/d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/g/d$7;-><init>(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;Z)V

    new-instance p0, Lcom/kwad/sdk/core/g/d$8;

    invoke-direct {p0, p3}, Lcom/kwad/sdk/core/g/d$8;-><init>(Lcom/kwad/sdk/core/g/d$a;)V

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/response/model/AdResultData;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/core/g/d;->b(Lcom/kwad/sdk/core/response/model/AdResultData;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    :cond_12
    sget-object v0, Lcom/kwad/sdk/core/g/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_17
    return-void
.end method

.method private static b(Lcom/kwad/sdk/core/response/model/AdResultData;J)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz p0, :cond_1b

    sub-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/KsScene;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/report/e;->c()V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdNum(I)V

    const-string v0, "AdRequestManager"

    const-string v1, "loadSplashScreenCache "

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/kwad/sdk/core/g/d$11;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/g/d$11;-><init>(Lcom/kwad/sdk/core/g/d;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v0, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance v1, Lcom/kwad/sdk/core/g/d$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/kwad/sdk/core/g/d$5;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/api/KsScene;)V

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V
    .registers 4

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v0, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance p1, Lcom/kwad/sdk/core/g/d$6;

    invoke-direct {p1, p0, p2}, Lcom/kwad/sdk/core/g/d$6;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v0, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance p1, Lcom/kwad/sdk/core/g/d$4;

    invoke-direct {p1, p0, p2}, Lcom/kwad/sdk/core/g/d$4;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v6, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v6, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance v7, Lcom/kwad/sdk/core/g/d$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/g/d$12;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;Lcom/kwad/sdk/api/KsScene;J)V

    invoke-static {v6, v7}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v0, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance p1, Lcom/kwad/sdk/core/g/d$14;

    invoke-direct {p1, p0, p2}, Lcom/kwad/sdk/core/g/d$14;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/kwad/sdk/core/g/d$15;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/g/d$15;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/g/d;->a(Ljava/lang/Runnable;)V

    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-direct {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->parseJson(Lorg/json/JSONObject;)V

    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->result:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    new-instance v0, Lcom/kwad/sdk/core/g/d$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/g/d$16;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/g/d;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_29
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->isAdResultDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance p1, Lcom/kwad/sdk/core/g/d$2;

    invoke-direct {p1, p0, p2}, Lcom/kwad/sdk/core/g/d$2;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    :goto_34
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d;->a(Ljava/lang/Runnable;)V

    goto :goto_70

    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v1, :cond_52

    goto :goto_43

    :cond_52
    new-instance v2, Lcom/kwad/sdk/a/a;

    invoke-direct {v2, v1}, Lcom/kwad/sdk/a/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_5b
    new-instance p1, Lcom/kwad/sdk/core/g/d$3;

    invoke-direct {p1, p0, p2, v0}, Lcom/kwad/sdk/core/g/d$3;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;Ljava/util/List;)V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_60} :catch_61

    goto :goto_34

    :catch_61
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v0, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    :goto_70
    return-void
.end method

.method public loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    new-instance v6, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v6, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance v7, Lcom/kwad/sdk/core/g/d$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/g/d$13;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;Lcom/kwad/sdk/api/KsScene;J)V

    invoke-static {v6, v7}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Lcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method

.method public loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .registers 13

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsScene;->setAdStyle(I)V

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/kwad/sdk/api/KsScene;->setAdNum(I)V

    const-string v2, "AdRequestManager"

    const-string v3, "loadSplashScreenAd "

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/kwad/sdk/core/g/d$b;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/kwad/sdk/core/g/d$b;-><init>(Lcom/kwad/sdk/core/g/d$1;)V

    invoke-static {}, Lcom/kwad/sdk/core/report/e;->b()V

    sget-object v2, Lcom/kwad/sdk/core/g/d;->a:Landroid/os/Handler;

    new-instance v3, Lcom/kwad/sdk/core/g/d$1;

    invoke-direct {v3, p0, p1}, Lcom/kwad/sdk/core/g/d$1;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsScene;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v7, Lcom/kwad/sdk/core/g/d$9;

    invoke-direct {v7, p0, v6, p2}, Lcom/kwad/sdk/core/g/d$9;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/g/d$b;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->g()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/kwad/sdk/core/g/a/e;

    invoke-direct {v2, p1}, Lcom/kwad/sdk/core/g/a/e;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    new-instance v3, Lcom/kwad/sdk/core/g/d$10;

    move-object v4, v3

    move-object v5, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/kwad/sdk/core/g/d$10;-><init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/g/d$b;Ljava/lang/Runnable;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsScene;)V

    invoke-static {v2, v0, v1, v3}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V

    return-void
.end method
