.class public final Lcom/mintegral/msdk/videocommon/download/k;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"


# instance fields
.field a:Lcom/mintegral/msdk/c/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/mintegral/msdk/videocommon/listener/a;

.field private e:Lcom/mintegral/msdk/videocommon/download/d;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/mintegral/msdk/videocommon/e/c;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    .line 40
    iput-boolean v2, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    .line 43
    new-instance v0, Lcom/mintegral/msdk/videocommon/download/k$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videocommon/download/k$1;-><init>(Lcom/mintegral/msdk/videocommon/download/k;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->e:Lcom/mintegral/msdk/videocommon/download/d;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I

    .line 65
    iput v2, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    .line 72
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->g:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_3c
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/k;->h:Ljava/util/concurrent/ExecutorService;

    .line 77
    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    .line 78
    iput p4, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z
    .registers 5

    .prologue
    .line 573
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/i;->a()Lcom/mintegral/msdk/videocommon/download/i;

    invoke-static {p0}, Lcom/mintegral/msdk/videocommon/download/i;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v0

    .line 574
    const-string v1, "UnitCacheCtroller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkImageListDownload checkImageState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 580
    :goto_1b
    return v0

    .line 576
    :catch_1c
    move-exception v0

    .line 577
    const-string v1, "UnitCacheCtroller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    const-string v0, "UnitCacheCtroller"

    const-string v1, "checkImageListDownload checkImageState:false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 3

    .prologue
    .line 865
    if-eqz p0, :cond_13

    .line 866
    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 867
    const/4 v0, 0x1

    .line 874
    :goto_a
    return v0

    .line 869
    :catch_b
    move-exception v0

    .line 870
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 871
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 874
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Lcom/mintegral/msdk/videocommon/download/a;I)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->n()J

    move-result-wide v2

    .line 471
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->d()J

    move-result-wide v4

    .line 472
    const-string v6, "UnitCacheCtroller"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "=========downloaded_file_size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--file_size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "---ready_rate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--getVideoUrlEncode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    if-nez p1, :cond_5b

    .line 474
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_7a

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 491
    :cond_5a
    :goto_5a
    return v0

    .line 478
    :cond_5b
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_7a

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7a

    .line 479
    const/16 v2, 0x64

    if-ne p1, v2, :cond_5a

    .line 480
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5a

    .line 483
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    move v0, v1

    .line 484
    goto :goto_5a

    :cond_7a
    move v0, v1

    .line 491
    goto :goto_5a
.end method

.method static synthetic a(Lcom/mintegral/msdk/videocommon/download/k;)Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    return v0
.end method

.method private static a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 502
    :try_start_1
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 503
    const-string v1, "UnitCacheCtroller"

    const-string v2, "checkEndcardDownload endcardUrl is null return true"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_e
    return v0

    .line 506
    :cond_f
    invoke-static {p0, p1}, Lcom/mintegral/msdk/videocommon/download/k;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 507
    const-string v1, "UnitCacheCtroller"

    const-string v2, "checkEndcardDownload endcardUrl done return true"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_e

    .line 511
    :catch_1d
    move-exception v0

    .line 512
    const-string v1, "UnitCacheCtroller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    :cond_27
    const-string v0, "UnitCacheCtroller"

    const-string v1, "checkEndcardDownload endcardUrl return false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/a;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 617
    const/4 v2, 0x0

    .line 619
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 620
    if-eqz v0, :cond_6

    .line 623
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 624
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 626
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;

    .line 627
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_31} :catch_36

    move-result v0

    if-ne v0, v1, :cond_1c

    move v0, v1

    .line 638
    :goto_35
    return v0

    .line 633
    :catch_36
    move-exception v0

    .line 634
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_3e

    .line 635
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3e
    move v0, v2

    .line 638
    goto :goto_35
.end method

.method private b(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 95
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 204
    :cond_9
    :goto_9
    return-void

    .line 1251
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5b

    .line 1253
    :try_start_e
    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_f8

    move v1, v3

    .line 1254
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 1255
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1256
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    .line 1257
    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1258
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1259
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/videocommon/download/a;

    .line 1260
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v6

    if-eqz v6, :cond_2b

    .line 1263
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1264
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->m()V

    .line 1265
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1266
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    .line 1267
    goto :goto_2b

    .line 1254
    :cond_57
    add-int/lit8 v1, v2, 0x1

    goto :goto_12

    .line 1271
    :cond_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_f5

    .line 99
    :cond_5b
    :goto_5b
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    packed-switch v0, :pswitch_data_1f0

    :cond_60
    :goto_60
    move v2, v3

    .line 163
    :goto_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1d6

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    if-eqz v0, :cond_f0

    .line 167
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f0

    .line 170
    :cond_a0
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_f0

    .line 171
    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 174
    :try_start_a7
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ec

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 175
    if-eqz v1, :cond_ad

    .line 177
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 178
    const/4 v4, 0x1

    .line 179
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/videocommon/download/a;

    .line 180
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 181
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/mintegral/msdk/videocommon/download/a;->a(Z)V

    move v1, v4

    .line 186
    :goto_d0
    if-nez v1, :cond_ef

    .line 187
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v4, p0, Lcom/mintegral/msdk/videocommon/download/k;->g:Landroid/content/Context;

    iget-object v7, p0, Lcom/mintegral/msdk/videocommon/download/k;->h:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-direct {v1, v4, v0, v7, v8}, Lcom/mintegral/msdk/videocommon/download/a;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/a;->b(I)V

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_ef} :catch_1e9
    .catchall {:try_start_a7 .. :try_end_ef} :catchall_1d3

    .line 197
    :cond_ef
    :goto_ef
    :try_start_ef
    monitor-exit v6
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_1d3

    .line 163
    :cond_f0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_61

    .line 1271
    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v0
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_f8} :catch_f8

    .line 1273
    :catch_f8
    move-exception v0

    const-string v0, "UnitCacheCtroller"

    const-string v1, "cleanDisplayTask ERROR"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 102
    :pswitch_102
    :try_start_102
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 103
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 104
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_129

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    .line 108
    :cond_129
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    if-eqz v0, :cond_60

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->o()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_13d} :catch_13f

    goto/16 :goto_60

    .line 114
    :catch_13f
    move-exception v0

    const-string v0, "UnitCacheCtroller"

    const-string v1, "make sure your had put feeds jar into your project"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 121
    :pswitch_149
    :try_start_149
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 122
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 123
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 124
    if-nez v0, :cond_16a

    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->c(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 127
    :cond_16a
    if-eqz v0, :cond_60

    .line 128
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    .line 129
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->o()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_178} :catch_17a

    goto/16 :goto_60

    .line 133
    :catch_17a
    move-exception v0

    const-string v0, "UnitCacheCtroller"

    const-string v1, "make sure your had put feeds jar into your project"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 139
    :pswitch_184
    :try_start_184
    const-string v0, "com.mintegral.msdk.videocommon.e.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 140
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 141
    if-nez v0, :cond_198

    .line 142
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->c()Lcom/mintegral/msdk/videocommon/e/a;

    .line 144
    :cond_198
    if-eqz v0, :cond_1a0

    .line 145
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    .line 147
    :cond_1a0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 148
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 149
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    .line 151
    :cond_1bb
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v0, :cond_60

    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->F()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_60

    .line 155
    :catch_1c9
    move-exception v0

    const-string v0, "UnitCacheCtroller"

    const-string v1, "make sure your had put reward jar into your project"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 197
    :catchall_1d3
    move-exception v0

    :try_start_1d4
    monitor-exit v6
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    throw v0

    .line 201
    :cond_1d6
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    :catch_1e9
    move-exception v0

    goto/16 :goto_ef

    :cond_1ec
    move v1, v3

    goto/16 :goto_d0

    .line 99
    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_102
        :pswitch_149
        :pswitch_184
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 526
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 527
    const-string v1, "UnitCacheCtroller"

    const-string v2, "Campaign is Mraid, do not need download endcardurl"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_e
    return v0

    .line 540
    :cond_f
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 541
    const-string v1, "UnitCacheCtroller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endcard zip \u4e0b\u8f7d\u5b8c\u6210 return true endcardUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 2036
    :cond_32
    sget-object v1, Lcom/mintegral/msdk/videocommon/download/h$a;->a:Lcom/mintegral/msdk/videocommon/download/h;

    .line 544
    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 545
    const-string v1, "UnitCacheCtroller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endcard url \u6e90\u7801 \u4e0b\u8f7d\u5b8c\u6210 return true endcardUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 548
    :cond_53
    const-string v0, "UnitCacheCtroller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEndcardZipOrSourceDownLoad endcardUrl return false endcardUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private d()I
    .registers 4

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v0, :cond_18

    .line 880
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    .line 882
    :cond_18
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->k:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->s()I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 886
    :goto_1e
    return v0

    .line 883
    :catch_1f
    move-exception v0

    .line 884
    const-string v1, "UnitCacheCtroller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 886
    const/16 v0, 0x64

    goto :goto_1e
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_32

    .line 595
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 597
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 598
    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 599
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_27} :catch_29
    .catchall {:try_start_7 .. :try_end_27} :catchall_34

    :try_start_27
    monitor-exit v1

    .line 607
    :goto_28
    return-object v0

    .line 603
    :catch_29
    move-exception v0

    const-string v0, "UnitCacheCtroller"

    const-string v2, "failed to get campaignTast by cid"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_31
    monitor-exit v1

    .line 607
    :cond_32
    const/4 v0, 0x0

    goto :goto_28

    .line 605
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public final a(Z)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 24

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_97

    .line 300
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_8d

    .line 301
    :try_start_b
    const-string v2, "UnitCacheCtroller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnitCache isReady ===== campaignDownLoadTaskList.size() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v2

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/b/f;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/b/f;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 307
    const/4 v4, 0x0

    :goto_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_37e

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 311
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 312
    :cond_68
    :goto_68
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37a

    .line 314
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mintegral/msdk/videocommon/download/a;

    .line 316
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v5

    if-nez v5, :cond_99

    .line 317
    :cond_82
    const-string v3, "UnitCacheCtroller"

    const-string v5, "UnitCache isReady ==== task \u6216\u8005 campaign\u4e3a\u7a7a continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 455
    :catchall_8a
    move-exception v2

    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v2
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8d} :catch_8d

    .line 456
    :catch_8d
    move-exception v2

    .line 457
    const-string v3, "UnitCacheCtroller"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_97
    :goto_97
    const/4 v3, 0x0

    :goto_98
    return-object v3

    .line 321
    :cond_99
    :try_start_99
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v12

    .line 322
    if-eqz p1, :cond_a5

    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    if-eqz v5, :cond_ad

    :cond_a5
    if-nez p1, :cond_d2

    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 323
    :cond_ad
    const-string v3, "UnitCacheCtroller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "UnitCache isReady ==== isBidCampaign = "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " campaign.isBidCampaign() = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 326
    :cond_d2
    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    .line 327
    const-string v3, "UnitCacheCtroller"

    const-string v5, "UnitCache isReady ====  Campaign Expired continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 330
    :cond_e4
    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v13

    .line 331
    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v14

    .line 332
    const-string v5, ""

    .line 333
    if-eqz v12, :cond_fe

    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v15

    if-eqz v15, :cond_fe

    .line 334
    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v5

    .line 336
    :cond_fe
    invoke-virtual {v12}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v15

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1bb

    .line 340
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11f

    .line 341
    const-string v3, "UnitCacheCtroller"

    const-string v5, "UnitCache isReady ====  videoUrlList not contain videoURl continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 1553
    :cond_11f
    const-string v16, "UnitCacheCtroller"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "check template"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_171

    .line 1556
    const-string v16, "UnitCacheCtroller"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "check template \u4e0b\u8f7d\u60c5\u51b5\uff1a"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_171

    .line 1559
    const/4 v5, 0x0

    .line 344
    :goto_166
    if-nez v5, :cond_173

    .line 345
    const-string v3, "UnitCacheCtroller"

    const-string v5, "UnitCache isReady ====  templateZipDownload check false continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 1562
    :cond_171
    const/4 v5, 0x1

    goto :goto_166

    .line 348
    :cond_173
    invoke-static {v13, v12}, Lcom/mintegral/msdk/videocommon/download/k;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 349
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 350
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->m()V

    .line 351
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready endcard\u4e0b\u8f7d\u5b8c \u4f46\u662foffer\u5c55\u793a\u8fc7 continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 355
    :cond_18b
    invoke-static {v14}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 356
    invoke-static {v15}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 357
    const-string v2, "UnitCacheCtroller"

    const-string v4, "endcard\u4e3a\u57fa\u51c6 endcard\u548c\u56fe\u7247\u4e0b\u8f7d\u5b8c\u6210 videourl\u4e3a\u7a7a\u4e0d\u7528\u4e0b\u8f7d return task"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    monitor-exit v6

    goto/16 :goto_98

    .line 361
    :cond_1a1
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/videocommon/download/k;->d()I

    move-result v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v5

    if-eqz v5, :cond_1bb

    invoke-static {v15}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 362
    const-string v2, "UnitCacheCtroller"

    const-string v4, "endcard\u4e3a\u57fa\u51c6 endcard \u56fe\u7247 \u548c videourl \u4e0b\u8f7d\u5b8c\u6210 return task"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    monitor-exit v6

    goto/16 :goto_98

    .line 370
    :cond_1bb
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1cf

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20b

    :cond_1cf
    const/4 v5, 0x1

    .line 371
    :goto_1d0
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v14

    .line 372
    const-string v16, "UnitCacheCtroller"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "isready unit state:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v14, v0, :cond_268

    .line 376
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v14

    if-eqz v14, :cond_20d

    .line 377
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->m()V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v4, v4, -0x1

    .line 380
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready state == DownLoadConstant.DOWNLOAD_DONE \u4f46\u662foffer\u5c55\u793a\u8fc7 continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 370
    :cond_20b
    const/4 v5, 0x0

    goto :goto_1d0

    .line 383
    :cond_20d
    if-nez v5, :cond_247

    .line 384
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->i()V

    .line 386
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_23e

    .line 387
    const-string v2, "UnitCacheCtroller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "isready ==========done but isEffectivePath:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is feed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    monitor-exit v6

    goto/16 :goto_98

    .line 390
    :cond_23e
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready !isEffectivePath continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 393
    :cond_247
    invoke-static {v13, v12}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_25d

    invoke-static {v15}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 394
    const-string v2, "UnitCacheCtroller"

    const-string v4, "isready videourl\u4e3a\u57fa\u51c6 state\uff1ddone endcard \u56fe\u7247 \u548c videourl \u4e0b\u8f7d\u5b8c\u6210 return task"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    monitor-exit v6

    goto/16 :goto_98

    .line 397
    :cond_25d
    const-string v2, "UnitCacheCtroller"

    const-string v3, "isready done but continue"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v3, 0x0

    monitor-exit v6

    goto/16 :goto_98

    .line 400
    :cond_268
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->b()J

    move-result-wide v16

    .line 401
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2ba

    .line 402
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->e()Ljava/lang/Runnable;

    move-result-object v5

    .line 403
    sub-long v16, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    cmp-long v16, v16, v18

    if-gtz v16, :cond_28c

    if-nez v5, :cond_2ba

    .line 404
    :cond_28c
    const-string v5, "download timeout"

    invoke-virtual {v3, v5}, Lcom/mintegral/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v4, v4, -0x1

    .line 408
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_2b1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v5, v0, :cond_2ba

    .line 409
    :cond_2b1
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready download !timeout continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 415
    :cond_2ba
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_2f3

    .line 416
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v5

    if-eqz v5, :cond_2d8

    .line 417
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->m()V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v4, v4, -0x1

    .line 420
    goto/16 :goto_68

    .line 422
    :cond_2d8
    const-string v2, "UnitCacheCtroller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "==========isready ad_type is :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    monitor-exit v6

    goto/16 :goto_98

    .line 426
    :cond_2f3
    const/4 v5, 0x4

    if-eq v14, v5, :cond_2f9

    const/4 v5, 0x2

    if-ne v14, v5, :cond_30e

    .line 427
    :cond_2f9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 429
    add-int/lit8 v4, v4, -0x1

    .line 430
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready stop continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 434
    :cond_30e
    const/4 v5, 0x1

    if-ne v14, v5, :cond_353

    .line 435
    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v5

    if-eqz v5, :cond_320

    .line 436
    const-string v3, "UnitCacheCtroller"

    const-string v5, "isready run \u5df2\u7ecf\u88ab\u5c55\u793a\u8fc7 continue"

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68

    .line 439
    :cond_320
    sget-boolean v5, Lcom/mintegral/msdk/MIntegralConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v5, :cond_353

    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/videocommon/download/k;->d()I

    move-result v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v5

    if-eqz v5, :cond_353

    invoke-static {v13, v12}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v5

    if-eqz v5, :cond_353

    invoke-static {v15}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v5

    if-eqz v5, :cond_353

    .line 441
    const-string v2, "UnitCacheCtroller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isready  IS_DOWANLOAD_FINSH_PLAY is :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/mintegral/msdk/MIntegralConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    monitor-exit v6

    goto/16 :goto_98

    .line 446
    :cond_353
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/4 v14, 0x3

    if-ne v5, v14, :cond_68

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/videocommon/download/k;->d()I

    move-result v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-static {v13, v12}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-static {v15}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 448
    const-string v2, "UnitCacheCtroller"

    const-string v4, "isready ad_type == CommonConst.REWARD_VIDEO_AD_TYPE ready_rate \u4e09\u4e2a\u6761\u4ef6is true"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    monitor-exit v6

    goto/16 :goto_98

    .line 307
    :cond_37a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4c

    .line 455
    :cond_37e
    monitor-exit v6
    :try_end_37f
    .catchall {:try_start_99 .. :try_end_37f} :catchall_8a

    goto/16 :goto_97
.end method

.method public final a()V
    .registers 15

    .prologue
    .line 645
    .line 2208
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_88

    .line 2210
    :try_start_4
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_118

    .line 2211
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2213
    const/4 v2, 0x0

    :goto_c
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_87

    .line 2215
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2217
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2218
    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2220
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/videocommon/download/a;

    .line 2222
    if-eqz v1, :cond_24

    .line 2225
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->b()J

    move-result-wide v8

    .line 2226
    sub-long v8, v4, v8

    iget-wide v10, p0, Lcom/mintegral/msdk/videocommon/download/k;->i:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_5d

    .line 2227
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5d

    .line 2228
    const-string v7, "download timeout"

    invoke-virtual {v1, v7}, Lcom/mintegral/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 2230
    iget-object v7, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2231
    add-int/lit8 v2, v2, -0x1

    .line 2234
    :cond_5d
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_184

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_184

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v7

    if-eqz v7, :cond_184

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_184

    .line 2235
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 2236
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2237
    add-int/lit8 v1, v2, -0x1

    :goto_82
    move v2, v1

    .line 2239
    goto :goto_24

    .line 2213
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2241
    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_115

    .line 646
    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_114

    .line 648
    :try_start_8c
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_128

    .line 649
    :try_start_8f
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    .line 652
    :cond_9a
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 653
    if-eqz v0, :cond_a0

    .line 657
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 658
    :cond_b6
    :goto_b6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 659
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 660
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;

    .line 661
    if-eqz v0, :cond_b6

    .line 664
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->a()Z

    move-result v1

    if-nez v1, :cond_b6

    .line 667
    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d8

    .line 668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    .line 670
    :cond_d8
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v1

    .line 671
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    .line 672
    if-eqz v2, :cond_181

    if-nez v1, :cond_181

    .line 673
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    .line 674
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->o()Lcom/mintegral/msdk/videocommon/download/d;

    move-result-object v6

    .line 673
    invoke-virtual {v1, v2, v6}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/d;)I

    move-result v1

    move v2, v1

    .line 677
    :goto_f8
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->d:Lcom/mintegral/msdk/videocommon/listener/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Lcom/mintegral/msdk/videocommon/listener/a;)V

    .line 678
    const/4 v1, 0x1

    if-eq v2, v1, :cond_b6

    const/4 v1, 0x5

    if-eq v2, v1, :cond_b6

    const/4 v1, 0x4

    if-eq v2, v1, :cond_b6

    .line 680
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    .line 681
    const/16 v6, 0x9

    if-eq v1, v6, :cond_11e

    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_11e

    .line 683
    monitor-exit v3
    :try_end_114
    .catchall {:try_start_8f .. :try_end_114} :catchall_125

    .line 730
    :cond_114
    :goto_114
    return-void

    .line 2241
    :catchall_115
    move-exception v0

    :try_start_116
    monitor-exit v3
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    :try_start_117
    throw v0
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_118} :catch_118

    .line 2243
    :catch_118
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_88

    .line 690
    :cond_11e
    :try_start_11e
    iget v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->l:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_12d

    .line 691
    monitor-exit v3

    goto :goto_114

    .line 724
    :catchall_125
    move-exception v0

    monitor-exit v3
    :try_end_127
    .catchall {:try_start_11e .. :try_end_127} :catchall_125

    :try_start_127
    throw v0
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_128} :catch_128

    .line 726
    :catch_128
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_114

    .line 694
    :cond_12d
    const/4 v1, 0x2

    if-eq v2, v1, :cond_134

    :try_start_130
    iget-boolean v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    if-eqz v1, :cond_b6

    .line 697
    :cond_134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    .line 698
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->e:Lcom/mintegral/msdk/videocommon/download/d;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/download/d;)V

    .line 700
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/k;->d()I

    move-result v1

    .line 701
    iget v6, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16a

    .line 702
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 703
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    .line 704
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    if-nez v1, :cond_164

    .line 705
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    .line 707
    :cond_164
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->a:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v1

    .line 709
    :cond_16a
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(I)V

    .line 711
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->f()V

    .line 714
    const/4 v0, 0x6

    if-ne v2, v0, :cond_178

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->c:Z

    goto/16 :goto_b6

    .line 718
    :cond_178
    iget v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b6

    .line 719
    monitor-exit v3

    goto :goto_114

    .line 724
    :cond_17f
    monitor-exit v3
    :try_end_180
    .catchall {:try_start_130 .. :try_end_180} :catchall_125

    goto :goto_114

    :cond_181
    move v2, v1

    goto/16 :goto_f8

    :cond_184
    move v1, v2

    goto/16 :goto_82
.end method

.method public final a(Lcom/mintegral/msdk/videocommon/listener/a;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/k;->d:Lcom/mintegral/msdk/videocommon/listener/a;

    .line 84
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public final b(Z)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 5

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/videocommon/download/k;->a(Z)Lcom/mintegral/msdk/videocommon/download/a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 590
    :goto_4
    return-object v0

    .line 587
    :catch_5
    move-exception v0

    .line 588
    const-string v1, "UnitCacheCtroller"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final b()V
    .registers 8

    .prologue
    .line 774
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_59

    .line 777
    :try_start_4
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_5f

    .line 778
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 779
    if-eqz v0, :cond_d

    .line 782
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 783
    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 784
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 785
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/videocommon/download/a;

    .line 786
    if-eqz v1, :cond_23

    .line 789
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v5

    .line 790
    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->g()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 791
    const-string v3, "UnitCacheCtroller"

    const-string v4, "\u6682\u505c\u6240\u6709\u4e0b\u8f7d"

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v3, "playing and stop download"

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/download/a;->p()V

    .line 795
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    monitor-exit v2

    .line 805
    :cond_59
    :goto_59
    return-void

    .line 800
    :cond_5a
    monitor-exit v2

    goto :goto_59

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v0
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    goto :goto_59
.end method

.method public final c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method
