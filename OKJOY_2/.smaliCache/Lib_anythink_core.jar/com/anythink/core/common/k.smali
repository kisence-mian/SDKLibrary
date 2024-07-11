.class public final Lcom/anythink/core/common/k;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/anythink/core/common/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/core/common/k;->a:Ljava/lang/String;

    .line 32
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/core/common/k;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/k;
    .registers 2

    const-class v0, Lcom/anythink/core/common/k;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/k;->c:Lcom/anythink/core/common/k;

    if-nez v1, :cond_e

    .line 43
    new-instance v1, Lcom/anythink/core/common/k;

    invoke-direct {v1}, Lcom/anythink/core/common/k;-><init>()V

    sput-object v1, Lcom/anythink/core/common/k;->c:Lcom/anythink/core/common/k;

    .line 45
    :cond_e
    sget-object v1, Lcom/anythink/core/common/k;->c:Lcom/anythink/core/common/k;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/anythink/core/common/d/d;)V
    .registers 10

    .line 51
    if-nez p0, :cond_3

    .line 52
    return-void

    .line 55
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_b8

    .line 58
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_59

    .line 64
    const-string v4, "token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 66
    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->g()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v5

    div-double/2addr v5, v2

    .line 68
    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v7
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_b9

    .line 69
    nop

    .line 1114
    :try_start_49
    new-instance v8, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v8, v0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v8, v5, v6, v4}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 1116
    invoke-virtual {v8, v7}, Lcom/adjust/sdk/AdjustEvent;->setOrderId(Ljava/lang/String;)V

    .line 1117
    invoke-static {v8}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_58

    .line 1122
    goto :goto_59

    .line 1118
    :catchall_58
    move-exception v0

    .line 73
    :cond_59
    :goto_59
    :try_start_59
    const-string v0, "2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_b8

    .line 75
    const-string v1, "rtye"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_b9

    .line 77
    :try_start_67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v4, "af_order_id"

    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v4, "af_content_id"

    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v4, "af_content_type"

    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v4, "af_revenue"

    const/4 v5, 0x2

    if-ne v0, v5, :cond_91

    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v2

    goto :goto_97

    :cond_91
    invoke-virtual {p0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v5

    div-double v2, v5, v2

    :goto_97
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string p0, "af_currency"

    const-string v0, "USD"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "af_ad_view"

    invoke-virtual {p0, v0, v2, v1}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_b6
    .catchall {:try_start_67 .. :try_end_b6} :catchall_b7

    .line 86
    return-void

    .line 84
    :catchall_b7
    move-exception p0

    .line 109
    :cond_b8
    return-void

    .line 105
    :catchall_b9
    move-exception p0

    .line 110
    return-void
.end method

.method private static a(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 114
    :try_start_0
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 116
    invoke-virtual {v0, p4}, Lcom/adjust/sdk/AdjustEvent;->setOrderId(Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 122
    return-void

    .line 118
    :catchall_f
    move-exception p0

    .line 123
    return-void
.end method
