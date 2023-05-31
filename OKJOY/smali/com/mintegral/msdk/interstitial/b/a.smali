.class public Lcom/mintegral/msdk/interstitial/b/a;
.super Ljava/lang/Object;
.source "InterstitialCamapignCache.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/interstitial/b/a;


# instance fields
.field private b:Lcom/mintegral/msdk/base/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/interstitial/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/interstitial/b/a;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/interstitial/b/a;->c:Lcom/mintegral/msdk/interstitial/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_18

    .line 30
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    .line 37
    :goto_17
    return-void

    .line 32
    :cond_18
    sget-object v0, Lcom/mintegral/msdk/interstitial/b/a;->a:Ljava/lang/String;

    const-string v1, "InterstitialCamapignCache get Context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_17

    .line 35
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public static a()Lcom/mintegral/msdk/interstitial/b/a;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/mintegral/msdk/interstitial/b/a;->c:Lcom/mintegral/msdk/interstitial/b/a;

    if-nez v0, :cond_13

    .line 42
    :try_start_4
    const-class v1, Lcom/mintegral/msdk/interstitial/b/a;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_19

    .line 43
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/interstitial/b/a;->c:Lcom/mintegral/msdk/interstitial/b/a;

    if-nez v0, :cond_12

    .line 44
    new-instance v0, Lcom/mintegral/msdk/interstitial/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/interstitial/b/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/interstitial/b/a;->c:Lcom/mintegral/msdk/interstitial/b/a;

    .line 46
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    :goto_13
    sget-object v0, Lcom/mintegral/msdk/interstitial/b/a;->c:Lcom/mintegral/msdk/interstitial/b/a;

    return-object v0

    .line 46
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_19

    .line 48
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_32

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_33

    .line 67
    :try_start_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_2b

    goto :goto_1b

    .line 73
    :catch_2b
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :cond_32
    :goto_32
    return-object v0

    .line 73
    :catch_33
    move-exception v1

    goto :goto_2f

    :cond_35
    move-object v0, v1

    goto :goto_32
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_16

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/base/b/f;->b(JLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18
    .catchall {:try_start_1 .. :try_end_16} :catchall_26

    .line 160
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 156
    :catch_18
    move-exception v0

    .line 157
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    sget-object v1, Lcom/mintegral/msdk/interstitial/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 153
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 87
    if-eqz p1, :cond_11

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    .line 94
    :cond_11
    :goto_11
    return-void

    .line 91
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 102
    invoke-virtual {p0, v0, p2}, Lcom/mintegral/msdk/interstitial/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_12

    .line 105
    :cond_22
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 141
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/b/a;->b:Lcom/mintegral/msdk/base/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 146
    :cond_12
    :goto_12
    return-void

    .line 144
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
