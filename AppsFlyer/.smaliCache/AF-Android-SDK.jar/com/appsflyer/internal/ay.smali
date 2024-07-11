.class public final Lcom/appsflyer/internal/ay;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    const-string v4, "is_cache"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 97
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v4, v1

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_2f
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_35

    .line 98
    :cond_32
    goto :goto_f

    .line 102
    :cond_33
    nop

    .line 103
    return-object v0

    .line 99
    :catch_35
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-object v1
.end method

.method public static AFKeystoreWrapper(Lcom/appsflyer/internal/af;Lcom/appsflyer/internal/h;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 21

    .line 37
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "is_first_launch"

    invoke-virtual {p1}, Lcom/appsflyer/internal/h;->AFInAppEventType()Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    .line 38
    :cond_e
    sget-object v4, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    if-nez v4, :cond_18

    .line 39
    const-string v0, "[GCD-E01] AppsFlyerConversionListener is null - skip gcd"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[GCD-A01] Loading conversion data. Counter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3159
    move-object v5, p1

    iget v5, v5, Lcom/appsflyer/internal/h;->onDeepLinkingNative:I

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 43
    const-string v4, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 44
    const/4 v9, 0x0

    const-string v10, "attributionId"

    cmp-long v11, v7, v5

    if-eqz v11, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    const-wide v7, 0x134fd9000L

    cmp-long v13, v11, v7

    if-lez v13, :cond_5a

    .line 45
    const-string v7, "[GCD-E02] Cached conversion data expired"

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 46
    const-string v7, "sixtyDayConversionData"

    invoke-static {v1, v7}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {v1, v10, v9}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/lang/String;J)V

    .line 50
    :cond_5a
    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94

    .line 51
    nop

    .line 3703
    const/4 v0, 0x0

    const-string v4, "appsFlyerCount"

    invoke-static {v2, v4, v0}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 51
    const/4 v2, 0x1

    if-gt v0, v2, :cond_6c

    return-void

    .line 53
    :cond_6c
    :try_start_6c
    invoke-static/range {p3 .. p3}, Lcom/appsflyer/internal/ay;->values(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0
    :try_end_70
    .catch Lcom/appsflyer/internal/bb; {:try_start_6c .. :try_end_70} :catch_8b

    .line 54
    if-nez v0, :cond_73

    return-void

    .line 57
    :cond_73
    :try_start_73
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 58
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_7e
    invoke-static {v0}, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName(Ljava/util/Map;)V
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_82

    .line 62
    return-void

    .line 60
    :catchall_82
    move-exception v0

    .line 61
    :try_start_83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catch Lcom/appsflyer/internal/bb; {:try_start_83 .. :try_end_8a} :catch_8b

    .line 65
    return-void

    .line 63
    :catch_8b
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void

    .line 68
    :cond_94
    if-eqz p6, :cond_ad

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    .line 70
    return-void

    .line 72
    :cond_ad
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_c3

    .line 73
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launch status code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ba;->values(Ljava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_c3
    new-instance v2, Lcom/appsflyer/internal/ba;

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    move-object/from16 v3, p2

    invoke-direct {v2, p0, v1, v3}, Lcom/appsflyer/internal/ba;-><init>(Lcom/appsflyer/internal/af;Landroid/app/Application;Ljava/lang/String;)V

    .line 78
    nop

    .line 4221
    iget-object v0, v2, Lcom/appsflyer/internal/ba;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 79
    return-void
.end method

.method static values(Landroid/content/Context;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/bb;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    const-string v0, "attributionId"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 85
    invoke-static {p0}, Lcom/appsflyer/internal/ay;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 86
    :cond_18
    new-instance p0, Lcom/appsflyer/internal/bb;

    invoke-direct {p0}, Lcom/appsflyer/internal/bb;-><init>()V

    throw p0
.end method
