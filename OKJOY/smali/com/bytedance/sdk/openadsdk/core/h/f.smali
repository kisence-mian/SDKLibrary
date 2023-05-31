.class public Lcom/bytedance/sdk/openadsdk/core/h/f;
.super Ljava/lang/Object;
.source "ProcessPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/h/f;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/f;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    if-nez v0, :cond_13

    .line 39
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/i;

    monitor-enter v1

    .line 40
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    .line 43
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    return-object v0

    .line 43
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/h/g;I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    :try_start_5
    const-string v0, "wk_status"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v0, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "geo"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "ad_sdk_version"

    const-string v2, "2.9.5.3"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "os"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v0, "os_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "ip"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "vendor"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "ad_package_name"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "action"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "service"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/h/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_86} :catch_8b

    .line 128
    :goto_86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :catch_8b
    move-exception v0

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_86
.end method

.method private c()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_21

    .line 139
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string v2, "latitude"

    iget v3, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    const-string v2, "longitude"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    .line 146
    :goto_1f
    return-object v0

    .line 143
    :catch_20
    move-exception v0

    .line 146
    :cond_21
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 151
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/h/g;I)V
    .registers 7

    .prologue
    .line 95
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;-><init>()V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b(Lcom/bytedance/sdk/openadsdk/core/h/g;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 97
    const-string v1, "wk_status"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 98
    const-string v1, "2.9.5.3"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->m(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 101
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Ljava/lang/Runnable;I)V

    .line 53
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    :cond_7
    return-void

    .line 62
    :cond_8
    const-wide/16 v0, 0x3e8

    :try_start_a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_75

    .line 67
    :goto_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->T()Ljava/util/List;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_7

    move v1, v2

    .line 69
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 70
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/g;

    .line 72
    if-eqz v0, :cond_6c

    .line 73
    :try_start_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->b:Ljava/lang/String;

    if-eqz v6, :cond_6c

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    if-eqz v6, :cond_6c

    .line 75
    const-string v6, "sp_push_time"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 76
    sub-long v6, v4, v6

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->d:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6c

    .line 77
    const-string v6, "sp_push_time"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 79
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/h/g;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/g;I)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_6c} :catch_70

    .line 69
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 86
    :catch_70
    move-exception v4

    .line 87
    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/g;I)V

    goto :goto_6c

    .line 63
    :catch_75
    move-exception v0

    goto :goto_d
.end method
