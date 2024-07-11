.class final Lcom/anythink/core/common/f/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/common/d/aa;

.field final synthetic c:J

.field final synthetic d:Lcom/anythink/core/common/f/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/a;ILcom/anythink/core/common/d/aa;J)V
    .registers 6

    .line 52
    iput-object p1, p0, Lcom/anythink/core/common/f/a$1;->d:Lcom/anythink/core/common/f/a;

    iput p2, p0, Lcom/anythink/core/common/f/a$1;->a:I

    iput-object p3, p0, Lcom/anythink/core/common/f/a$1;->b:Lcom/anythink/core/common/d/aa;

    iput-wide p4, p0, Lcom/anythink/core/common/f/a$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 56
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/anythink/core/common/d/e;

    invoke-direct {v1}, Lcom/anythink/core/common/d/e;-><init>()V

    .line 60
    iget v2, p0, Lcom/anythink/core/common/f/a$1;->a:I

    iput v2, v1, Lcom/anythink/core/common/d/e;->a:I

    .line 61
    iget-object v2, p0, Lcom/anythink/core/common/f/a$1;->b:Lcom/anythink/core/common/d/aa;

    iput-object v2, v1, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    .line 62
    iget-wide v2, p0, Lcom/anythink/core/common/f/a$1;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_32
    iput-wide v2, v1, Lcom/anythink/core/common/d/e;->c:J

    .line 64
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/l;

    move-result-object v2

    iget v3, p0, Lcom/anythink/core/common/f/a$1;->a:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/anythink/core/common/l;->a(ILcom/anythink/core/common/d/e;Lcom/anythink/core/c/a;)V

    .line 67
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->S()Ljava/util/Map;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_76

    iget v2, p0, Lcom/anythink/core/common/f/a$1;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 69
    iget v2, p0, Lcom/anythink/core/common/f/a$1;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76

    iget-object v2, p0, Lcom/anythink/core/common/f/a$1;->b:Lcom/anythink/core/common/d/aa;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/aa;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 73
    return-void

    .line 78
    :cond_76
    const/4 v0, 0x4

    iget v2, p0, Lcom/anythink/core/common/f/a$1;->a:I

    if-ne v0, v2, :cond_141

    iget-object v0, p0, Lcom/anythink/core/common/f/a$1;->b:Lcom/anythink/core/common/d/aa;

    instance-of v0, v0, Lcom/anythink/core/common/d/d;

    if-eqz v0, :cond_141

    .line 79
    invoke-static {}, Lcom/anythink/core/common/k;->a()Lcom/anythink/core/common/k;

    iget-object v0, p0, Lcom/anythink/core/common/f/a$1;->b:Lcom/anythink/core/common/d/aa;

    check-cast v0, Lcom/anythink/core/common/d/d;

    .line 1051
    if-eqz v0, :cond_141

    .line 1055
    :try_start_8a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 1057
    if-eqz v2, :cond_13f

    .line 1058
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 1059
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1062
    const-string v2, "1"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1063
    const-wide v4, 0x408f400000000000L    # 1000.0

    if-eqz v2, :cond_e0

    .line 1064
    const-string v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e0

    .line 1066
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->g()Ljava/lang/String;

    move-result-object v6

    .line 1067
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v7

    div-double/2addr v7, v4

    .line 1068
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v9
    :try_end_cf
    .catchall {:try_start_8a .. :try_end_cf} :catchall_140

    .line 1069
    nop

    .line 1114
    :try_start_d0
    new-instance v10, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v10, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v10, v7, v8, v6}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 1116
    invoke-virtual {v10, v9}, Lcom/adjust/sdk/AdjustEvent;->setOrderId(Ljava/lang/String;)V

    .line 1117
    invoke-static {v10}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_de
    .catchall {:try_start_d0 .. :try_end_de} :catchall_df

    .line 1122
    goto :goto_e0

    .line 1118
    :catchall_df
    move-exception v2

    .line 1073
    :cond_e0
    :goto_e0
    :try_start_e0
    const-string v2, "2"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1074
    if-eqz v2, :cond_13f

    .line 1075
    const-string v3, "rtye"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_140

    .line 1077
    :try_start_ee
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1078
    const-string v6, "af_order_id"

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string v6, "af_content_id"

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v6, "af_content_type"

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string v6, "af_revenue"

    const/4 v7, 0x2

    if-ne v2, v7, :cond_118

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v4

    goto :goto_11e

    :cond_118
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v7

    div-double v4, v7, v4

    :goto_11e
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string v0, "af_currency"

    const-string v2, "USD"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    const-string v4, "af_ad_view"

    invoke-virtual {v0, v2, v4, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_13d
    .catchall {:try_start_ee .. :try_end_13d} :catchall_13e

    .line 1086
    goto :goto_141

    .line 1084
    :catchall_13e
    move-exception v0

    .line 1109
    :cond_13f
    goto :goto_141

    .line 1105
    :catchall_140
    move-exception v0

    .line 87
    :cond_141
    :goto_141
    iget-object v0, p0, Lcom/anythink/core/common/f/a$1;->d:Lcom/anythink/core/common/f/a;

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/a;->a(Lcom/anythink/core/common/f/a;Lcom/anythink/core/common/d/o;)V

    .line 88
    return-void
.end method
