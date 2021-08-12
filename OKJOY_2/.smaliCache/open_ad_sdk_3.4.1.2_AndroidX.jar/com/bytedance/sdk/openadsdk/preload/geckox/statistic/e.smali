.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;
.super Ljava/lang/Object;
.source "UploadStatistic.java"


# direct methods
.method private static a(Ljava/util/List;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 276
    if-eqz p0, :cond_12

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "params_for_special"

    const-string v2, "gecko"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->region:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    const-string v2, "err_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    const-string v2, "err_msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->sdkVersion:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    const-string v2, "access_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    const-string v2, "stats_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceId:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_45

    move-wide v4, v2

    goto :goto_4b

    :cond_45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4b
    const-string v1, "patch_id"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    const-string v4, "group_name"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->os:I

    const-string v4, "os"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->appVersion:Ljava/lang/String;

    const-string v4, "app_version"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->deviceModel:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    const-string v4, "channel"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    if-nez v1, :cond_79

    move-wide v4, v2

    goto :goto_7f

    :cond_79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_7f
    const-string v1, "id"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;->ac:Ljava/lang/String;

    const-string v1, "ac"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    if-nez p1, :cond_91

    const/4 p1, 0x0

    goto :goto_97

    :cond_91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_97
    const-string v1, "download_retry_times"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_a4

    move-object p1, v1

    goto :goto_a6

    :cond_a4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    :goto_a6
    const-string v4, "download_url"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    const-string v4, "download_duration"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    if-nez p1, :cond_b7

    goto :goto_b9

    :cond_b7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    :goto_b9
    const-string p1, "download_fail_records"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->logId:Ljava/lang/String;

    const-string v1, "log_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    if-nez p1, :cond_cb

    move-wide v4, v2

    goto :goto_d1

    :cond_cb
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_d1
    const-string p1, "active_check_duration"

    invoke-virtual {v0, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    if-nez p1, :cond_db

    goto :goto_e1

    :cond_db
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_e1
    const-string p0, "apply_duration"

    invoke-virtual {v0, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)V
    .registers 7

    .line 37
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;

    move-result-object p1

    .line 38
    if-eqz p1, :cond_55

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    if-nez v0, :cond_b

    goto :goto_55

    .line 43
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->p()Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_38

    .line 46
    :try_start_11
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    .line 48
    const-string v3, "geckosdk_update_stats"

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->common:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_30

    .line 49
    goto :goto_17

    .line 52
    :cond_2f
    goto :goto_38

    .line 50
    :catchall_30
    move-exception v0

    .line 51
    const-string v1, "gecko-debug-tag"

    const-string v2, "UploadStatistic.upload:"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->c()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 59
    return-void

    .line 61
    :cond_51
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;)V

    .line 63
    :cond_54
    return-void

    .line 39
    :cond_55
    :goto_55
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->p()Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_18

    .line 73
    :try_start_6
    const-string v1, "geckosdk_query_pkgs"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    .line 76
    goto :goto_18

    .line 74
    :catchall_10
    move-exception p0

    .line 75
    const-string p1, "gecko-debug-tag"

    const-string v0, "UploadStatistic.upload:"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_18
    :goto_18
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;)V
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gecko/server/packages/stats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->B:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_ac

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->C:Z

    if-eqz p1, :cond_ac

    .line 283
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 284
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 286
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 287
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 288
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 289
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    .line 290
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 291
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    .line 292
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->v:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    .line 293
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    .line 294
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->y:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->x:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    .line 295
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->D:Z

    if-eqz p1, :cond_84

    .line 296
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 297
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 299
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 300
    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 301
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 302
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 303
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->z:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->y:J

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    .line 304
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->A:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->z:J

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    goto :goto_ab

    .line 306
    :cond_84
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 307
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 309
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 310
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 311
    const-string p2, "500"

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 312
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 313
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 314
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->F:Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    .line 316
    :goto_ab
    goto :goto_110

    .line 317
    :cond_ac
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 318
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 320
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 321
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 322
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 323
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    .line 324
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 325
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    .line 326
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->v:Ljava/lang/String;

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    .line 327
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    .line 328
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->B:Z

    if-nez p3, :cond_104

    .line 329
    const-string p3, "300"

    iput-object p3, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 330
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    if-eqz p3, :cond_110

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_110

    .line 331
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->w:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;->reason:Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    goto :goto_110

    .line 333
    :cond_104
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->C:Z

    if-nez p2, :cond_110

    .line 334
    const-string p2, "450"

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 335
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->E:Ljava/lang/String;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    .line 338
    :cond_110
    :goto_110
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;
    .registers 12

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;

    .line 164
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    if-nez v3, :cond_2b

    iget-wide v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->f:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_26

    goto :goto_2b

    .line 249
    :cond_26
    invoke-static {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;Ljava/util/List;)V

    goto/16 :goto_199

    .line 166
    :cond_2b
    :goto_2b
    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->h:Z

    if-eqz v3, :cond_12b

    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->i:Z

    if-eqz v3, :cond_12b

    .line 167
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 170
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 171
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 172
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 173
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    .line 174
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 175
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    .line 176
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    .line 177
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    .line 178
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    .line 179
    iget-wide v5, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->g:J

    iget-wide v7, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->f:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    .line 180
    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->j:Z

    if-nez v3, :cond_bc

    .line 181
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 184
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 185
    const-string v4, "403"

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 186
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->t:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    .line 187
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    .line 188
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    .line 189
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 190
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    .line 191
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    .line 192
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    .line 194
    invoke-static {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;Ljava/util/List;)V

    goto :goto_12a

    .line 196
    :cond_bc
    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->k:Z

    if-eqz v3, :cond_fb

    .line 197
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 200
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 201
    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 202
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    .line 203
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 204
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 205
    iget-wide v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->n:J

    iget-wide v6, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    .line 206
    iget-wide v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->o:J

    iget-wide v6, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->n:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    goto :goto_12a

    .line 208
    :cond_fb
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 211
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 212
    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 213
    const-string v4, "501"

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 214
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 215
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    .line 216
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 217
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->u:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    .line 219
    invoke-static {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;Ljava/util/List;)V

    .line 222
    :goto_12a
    goto :goto_199

    .line 223
    :cond_12b
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    .line 224
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    .line 226
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    .line 227
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    .line 228
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    .line 229
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    .line 230
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    .line 231
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    .line 232
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    .line 233
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    .line 234
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    .line 235
    iget-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->h:Z

    if-nez v4, :cond_189

    .line 236
    const-string v4, "301"

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 237
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    if-eqz v4, :cond_195

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_195

    .line 238
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;->reason:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    goto :goto_195

    .line 240
    :cond_189
    iget-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->i:Z

    if-nez v4, :cond_195

    .line 241
    const-string v4, "402"

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    .line 242
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->s:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    .line 245
    :cond_195
    :goto_195
    invoke-static {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;Ljava/util/List;)V

    .line 246
    nop

    .line 251
    :goto_199
    goto/16 :goto_d

    .line 252
    :cond_19b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 255
    const/4 p0, 0x0

    return-object p0

    .line 258
    :cond_1ae
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 260
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l()Ljava/lang/String;

    move-result-object v9

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->common:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    .line 266
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    .line 267
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    .line 269
    iput-object p1, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->logId:Ljava/lang/String;

    .line 270
    goto :goto_1e5

    .line 271
    :cond_1f4
    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;"
        }
    .end annotation

    .line 342
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    const-string v1, "params_for_special"

    const-string v2, "gecko"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "os"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v1, "api_version"

    const-string v2, "v3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j()J

    move-result-wide v1

    const-string p0, "aid"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->e:Ljava/lang/String;

    const-string v1, "x_tt_logid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    iget p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->g:I

    const-string v1, "http_status"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    const-string v1, "err_msg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "custom_info"

    const-string v2, "local_info"

    const-string v3, "deployments_info"

    const-string v4, ""

    if-eqz p0, :cond_69

    .line 144
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_72

    .line 148
    :cond_69
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :goto_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "os_version"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string p0, "device_platform"

    const-string v1, "android"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "device_model"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    iget-object p0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->f:Ljava/lang/String;

    const-string p1, "ac"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    return-object v0
.end method
