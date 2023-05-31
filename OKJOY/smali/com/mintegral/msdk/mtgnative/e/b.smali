.class public final Lcom/mintegral/msdk/mtgnative/e/b;
.super Ljava/lang/Object;
.source "NativeReportUtils.java"


# direct methods
.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    if-nez p0, :cond_9

    move-object v0, v1

    .line 120
    :goto_8
    return-object v0

    .line 105
    :cond_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 107
    goto :goto_8

    .line 111
    :cond_15
    :try_start_15
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    move v2, v0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_33

    .line 113
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2b} :catch_2f

    .line 112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    .line 118
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    move-object v0, v1

    .line 120
    goto :goto_8
.end method

.method private static declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 37
    const-class v6, Lcom/mintegral/msdk/mtgnative/e/b;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/e/b$1;

    invoke-direct {v1, p1, p0}, Lcom/mintegral/msdk/mtgnative/e/b$1;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    :cond_26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 62
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4a

    .line 64
    :cond_48
    monitor-exit v6

    return-void

    .line 37
    :catchall_4a
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/mtgnative/d/a;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 23
    const-class v7, Lcom/mintegral/msdk/mtgnative/e/b;

    monitor-enter v7

    :try_start_4
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReport(Z)V

    .line 25
    invoke-static {p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/e/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/e/b;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/mintegral/msdk/mtgnative/e/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Ljava/util/List;

    move-result-object v8

    .line 1081
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3d

    move v6, v0

    .line 1086
    :goto_1f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3d

    .line 1087
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1088
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1090
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1086
    :cond_39
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1f

    .line 31
    :cond_3d
    if-eqz p3, :cond_46

    .line 32
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mintegral/msdk/mtgnative/d/a;->onLoggingImpression(I)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_48

    .line 34
    :cond_46
    monitor-exit v7

    return-void

    .line 23
    :catchall_48
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static declared-synchronized b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 68
    const-class v6, Lcom/mintegral/msdk/mtgnative/e/b;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 69
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 70
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    .line 78
    :cond_3a
    monitor-exit v6

    return-void

    .line 68
    :catchall_3c
    move-exception v0

    monitor-exit v6

    throw v0
.end method
