.class public final Lcom/umeng/cconfig/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Lcom/umeng/cconfig/b/c;Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 9

    const-class v0, Lcom/umeng/cconfig/b/e;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_ea

    if-eqz p1, :cond_ea

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    new-instance v4, Lcom/umeng/cconfig/b/a;

    invoke-direct {v4}, Lcom/umeng/cconfig/b/a;-><init>()V

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_db
    .catchall {:try_start_a .. :try_end_17} :catchall_d9

    if-eqz v6, :cond_1b

    monitor-exit v0

    return-object v1

    :cond_1b
    :try_start_1b
    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_db
    .catchall {:try_start_1b .. :try_end_25} :catchall_d9

    if-eqz v6, :cond_29

    monitor-exit v0

    return-object v1

    :cond_29
    :try_start_29
    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->l:Ljava/lang/Long;

    iget-object v5, p0, Lcom/umeng/cconfig/b/c;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->j:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/umeng/cconfig/b/c;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->k:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/umeng/cconfig/b/c;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/umeng/cconfig/b/a;->m:Ljava/lang/String;

    iget-object p0, p0, Lcom/umeng/cconfig/b/c;->b:Ljava/lang/String;

    iput-object p0, v4, Lcom/umeng/cconfig/b/a;->n:Ljava/lang/String;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5f} :catch_db
    .catchall {:try_start_29 .. :try_end_5f} :catchall_d9

    :try_start_5f
    sget-object v1, Lcom/umeng/cconfig/b/a;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->l:Ljava/lang/Long;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->j:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->k:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->f:Ljava/lang/String;

    iget-object v6, v4, Lcom/umeng/cconfig/b/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/a;->g:Ljava/lang/String;

    iget-object v4, v4, Lcom/umeng/cconfig/b/a;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v2, p0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/umeng/cconfig/b/e;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b0

    const/4 v1, 0x1

    :goto_9e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v1, v4, :cond_b0

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_ad} :catch_c8
    .catchall {:try_start_5f .. :try_end_ad} :catchall_d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_b0
    :try_start_b0
    invoke-static {p1}, Lcom/umeng/cconfig/a/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_c6

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "abtest_sp_last_request_data"

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c4} :catch_c5
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_d9

    goto :goto_c6

    :catch_c5
    move-exception p0

    :cond_c6
    :goto_c6
    monitor-exit v0

    return-object v5

    :catch_c8
    move-exception p0

    :try_start_c9
    const-string p0, "jessie"

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "[getUpdateAbEventLogParam] error i"

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d4} :catch_d6
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_d9

    move-object v1, v5

    goto :goto_ea

    :catch_d6
    move-exception p0

    move-object v1, v5

    goto :goto_dc

    :catchall_d9
    move-exception p0

    goto :goto_e8

    :catch_db
    move-exception p0

    :goto_dc
    :try_start_dc
    const-string p0, "jessie"

    new-array p1, v3, [Ljava/lang/Object;

    const-string v3, "[getUpdateAbEventLogParam] error ii"

    aput-object v3, p1, v2

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_d9

    goto :goto_ea

    :goto_e8
    monitor-exit v0

    throw p0

    :cond_ea
    :goto_ea
    monitor-exit v0

    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8

    const-class v0, Lcom/umeng/cconfig/b/e;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    new-instance v4, Lcom/umeng/cconfig/b/b;

    invoke-direct {v4}, Lcom/umeng/cconfig/b/b;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_f2
    .catchall {:try_start_6 .. :try_end_13} :catchall_f4

    if-eqz v6, :cond_17

    monitor-exit v0

    return-object v1

    :cond_17
    :try_start_17
    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_f2
    .catchall {:try_start_17 .. :try_end_21} :catchall_f4

    if-eqz v6, :cond_25

    monitor-exit v0

    return-object v1

    :cond_25
    :try_start_25
    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->p:Ljava/lang/String;

    const-string v5, "9.3.3"

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->q:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->r:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->s:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->t:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->u:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    iput-object v6, v4, Lcom/umeng/cconfig/b/b;->v:Ljava/lang/String;

    aget-object v5, v5, v2

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->y:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getResolutionArray(Landroid/content/Context;)[I

    move-result-object v5

    aget v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/umeng/cconfig/b/b;->x:Ljava/lang/Integer;

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/cconfig/b/b;->w:Ljava/lang/Integer;

    const-string v5, "install_datetime"

    const-string v6, ""

    if-nez p0, :cond_77

    goto :goto_7b

    :cond_77
    invoke-static {p0, v5, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7b
    iput-object v6, v4, Lcom/umeng/cconfig/b/b;->z:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7d} :catch_f2
    .catchall {:try_start_25 .. :try_end_7d} :catchall_f4

    :try_start_7d
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_82} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_f2
    .catchall {:try_start_7d .. :try_end_82} :catchall_f4

    :try_start_82
    sget-object v1, Lcom/umeng/cconfig/b/b;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->c:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->d:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->e:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->f:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->g:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->h:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->k:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->x:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->j:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->w:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->l:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->y:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->i:Ljava/lang/String;

    iget-object v5, v4, Lcom/umeng/cconfig/b/b;->v:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/cconfig/b/b;->m:Ljava/lang/String;

    iget-object v4, v4, Lcom/umeng/cconfig/b/b;->z:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_82 .. :try_end_dd} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_dd} :catch_df
    .catchall {:try_start_82 .. :try_end_dd} :catchall_f4

    monitor-exit v0

    return-object p0

    :catch_df
    move-exception v1

    move-object v1, p0

    goto :goto_f6

    :catch_e2
    move-exception v1

    move-object v1, p0

    goto :goto_e6

    :catch_e5
    move-exception p0

    :goto_e6
    :try_start_e6
    const-string p0, "jessie"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "[getCloudConfigParam] error i"

    aput-object v5, v4, v2

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f1} :catch_f2
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_f4

    goto :goto_101

    :catch_f2
    move-exception p0

    goto :goto_f6

    :catchall_f4
    move-exception p0

    goto :goto_103

    :goto_f6
    :try_start_f6
    const-string p0, "jessie"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[getCloudConfigParam] error ii"

    aput-object v4, v3, v2

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_101
    .catchall {:try_start_f6 .. :try_end_101} :catchall_f4

    :goto_101
    monitor-exit v0

    return-object v1

    :goto_103
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/umeng/cconfig/a/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_40

    const-string v1, "abtest_sp_last_request_data"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_3f

    if-nez v1, :cond_40

    :try_start_19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, p0, :cond_40

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_37} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_3f

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :catch_3a
    move-exception p0

    :try_start_3b
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception p0

    :cond_40
    :goto_40
    return-object v0
.end method
