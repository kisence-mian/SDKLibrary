.class public Lcom/bytedance/sdk/openadsdk/core/h/d;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "ProcessPushHelper.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/h/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    .line 50
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/d;
    .registers 2

    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Lcom/bytedance/sdk/openadsdk/core/h/d;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/f;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Lcom/bytedance/sdk/openadsdk/core/h/d;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Lcom/bytedance/sdk/openadsdk/core/h/d;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Lcom/bytedance/sdk/openadsdk/core/h/d;

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/h/e;I)Ljava/lang/String;
    .registers 7

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_5
    const-string v1, "wk_status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string p2, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string p2, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string p2, "geo"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string p2, "ad_sdk_version"

    const-string v1, "3.4.1.2"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string p2, "os"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string p2, "os_version"

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

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string p2, "ip"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string p2, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string p2, "vendor"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string p2, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string p2, "ad_package_name"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string p2, "action"

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string p2, "service"

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_85} :catch_86

    .line 128
    goto :goto_8a

    .line 126
    :catch_86
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 129
    :goto_8a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Lorg/json/JSONObject;
    .registers 6

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_21

    .line 140
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    const-string v2, "latitude"

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 142
    const-string v2, "longitude"

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    .line 143
    return-object v1

    .line 144
    :catch_20
    move-exception v0

    .line 147
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Z
    .registers 2

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/h/e;I)V
    .registers 4

    .line 96
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;-><init>()V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->b(Lcom/bytedance/sdk/openadsdk/core/h/e;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 98
    const-string p1, "wk_status"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 99
    const-string p1, "3.4.1.2"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->m(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 102
    return-void
.end method

.method public b()V
    .registers 2

    .line 53
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 54
    return-void
.end method

.method public run()V
    .registers 12

    .line 58
    const-string v0, "sp_push_time"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    return-void

    .line 63
    :cond_9
    const-wide/16 v1, 0x3e8

    :try_start_b
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 65
    goto :goto_10

    .line 64
    :catch_f
    move-exception v1

    .line 68
    :goto_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->I()Ljava/util/List;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_76

    .line 70
    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/h/e;

    .line 73
    if-eqz v4, :cond_72

    .line 74
    :try_start_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 75
    iget-object v7, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->b:Ljava/lang/String;

    if-eqz v7, :cond_72

    iget-object v7, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    if-eqz v7, :cond_72

    .line 76
    iget-object v7, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v0, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 77
    sub-long v7, v5, v7

    iget v9, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->d:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_72

    .line 78
    iget-object v7, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v7, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 80
    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;I)V
    :try_end_6c
    .catchall {:try_start_2a .. :try_end_6c} :catchall_6d

    goto :goto_72

    .line 87
    :catchall_6d
    move-exception v5

    .line 88
    invoke-virtual {p0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;I)V

    goto :goto_73

    .line 89
    :cond_72
    :goto_72
    nop

    .line 70
    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 93
    :cond_76
    return-void
.end method
