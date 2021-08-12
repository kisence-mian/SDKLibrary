.class public Lcom/bytedance/sdk/openadsdk/c/d$a;
.super Ljava/lang/Object;
.source "AdEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(IILcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .line 1100
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    if-nez v0, :cond_7

    .line 1102
    return-void

    .line 1104
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_landingpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1106
    const-string v2, "all_times"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1107
    const-string p1, "hit_times"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1108
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1109
    const-string p1, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    const-string v1, "local_res_hit_rate"

    invoke-static {p1, p2, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    .line 1113
    goto :goto_49

    .line 1111
    :catchall_41
    move-exception p0

    .line 1112
    const-string p1, "AdEvent"

    const-string p2, "Gecko.localResHitRate error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    :goto_49
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .line 1085
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    if-nez v0, :cond_7

    .line 1087
    return-void

    .line 1089
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_landingpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1091
    const-string v2, "ad_extra_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    .line 1095
    goto :goto_38

    .line 1093
    :catchall_30
    move-exception p0

    .line 1094
    const-string p1, "AdEvent"

    const-string p2, "Gecko.loadEvent error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    :goto_38
    return-void
.end method
