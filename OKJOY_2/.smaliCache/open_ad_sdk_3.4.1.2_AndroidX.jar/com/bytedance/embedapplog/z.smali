.class public Lcom/bytedance/embedapplog/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/embedapplog/InitConfig;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Landroid/content/SharedPreferences;

.field private volatile f:Lorg/json/JSONObject;

.field private volatile g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/bytedance/embedapplog/z;->a:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    .line 94
    const-string p2, "embed_applog_stats"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    .line 95
    const-string p2, "embed_header_custom"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    .line 96
    const-string p2, "embed_last_sp_session"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/z;->d:Landroid/content/SharedPreferences;

    .line 97
    return-void
.end method


# virtual methods
.method A()Ljava/lang/String;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getReleaseBuild()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method B()Ljava/lang/String;
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()J
    .registers 3

    .line 363
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()I
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public F()I
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getUpdateVersionCode()I

    move-result v0

    return v0
.end method

.method public G()I
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getManifestVersionCode()I

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbClient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbFeature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppImei()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public O()Z
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->isImeiEnable()Z

    move-result v0

    return v0
.end method

.method public P()Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    return-object v0
.end method

.method public Q()Ljava/lang/CharSequence;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAliyunUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 359
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_last_day"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_order"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 355
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 16

    .line 134
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_1f

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_1f
    iput-object p1, p0, Lcom/bytedance/embedapplog/z;->g:Lorg/json/JSONObject;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 144
    const-string v3, "session_interval"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    .line 145
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-wide/16 v10, 0x3e8

    const-wide/32 v12, 0x93a80

    if-lez v9, :cond_47

    cmp-long v9, v5, v12

    if-gtz v9, :cond_47

    .line 146
    mul-long/2addr v5, v10

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4a

    .line 148
    :cond_47
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    :goto_4a
    const-string v3, "batch_event_interval"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    .line 152
    cmp-long v7, v5, v7

    if-lez v7, :cond_5e

    cmp-long v7, v5, v12

    if-gtz v7, :cond_5e

    .line 153
    mul-long/2addr v5, v10

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_61

    .line 155
    :cond_5e
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    :goto_61
    const-string v3, "send_launch_timely"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 159
    if-lez v5, :cond_72

    int-to-long v6, v5

    cmp-long v6, v6, v12

    if-gtz v6, :cond_72

    .line 160
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_75

    .line 162
    :cond_72
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :goto_75
    const-string v3, "abtest_fetch_interval"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    .line 166
    const-wide/16 v7, 0x14

    cmp-long v7, v5, v7

    if-lez v7, :cond_8b

    cmp-long v7, v5, v12

    if-gtz v7, :cond_8b

    .line 167
    mul-long/2addr v5, v10

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_8e

    .line 169
    :cond_8b
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    :goto_8e
    const-string v3, "bav_log_collect"

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 173
    if-eqz v6, :cond_9b

    .line 174
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_9e

    .line 176
    :cond_9b
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    :goto_9e
    sput-boolean v6, Lcom/bytedance/embedapplog/bo;->a:Z

    .line 180
    const-string v3, "bav_ab_config"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 181
    if-eqz v6, :cond_ac

    .line 182
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_af

    .line 184
    :cond_ac
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :goto_af
    const-string v3, "bav_monitor_rate"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 188
    if-lez p1, :cond_c2

    const/16 v6, 0x64

    if-gt p1, v6, :cond_c2

    .line 189
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-static {v5}, Lcom/bytedance/embedapplog/bn;->a(Z)V

    goto :goto_c8

    .line 192
    :cond_c2
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-static {v4}, Lcom/bytedance/embedapplog/bn;->a(Z)V

    .line 196
    :goto_c8
    const-string p1, "app_log_last_config_time"

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public a(Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;)Z"
        }
    .end annotation

    .line 350
    const/4 p1, 0x1

    return p1
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    return-void
.end method

.method b(Lorg/json/JSONObject;)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_d
    const-string p1, ""

    :goto_f
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method

.method public b()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getPicker()Lcom/bytedance/embedapplog/IPicker;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_last_day"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 300
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/z;->u()Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method c(Lorg/json/JSONObject;)V
    .registers 5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAbConfig, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ab_configure"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    iput-object v1, p0, Lcom/bytedance/embedapplog/z;->f:Lorg/json/JSONObject;

    .line 270
    return-void
.end method

.method public d()I
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    return-void
.end method

.method public e()Landroid/content/SharedPreferences;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    return-void
.end method

.method public f()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->isPlayEnable()Z

    move-result v0

    return v0
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()J
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_monitor_rate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getGoogleAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Ljava/lang/String;
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    const-string v1, "header_custom_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/lang/String;
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    const-string v1, "user_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getProcess()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 256
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    iget-object v2, p0, Lcom/bytedance/embedapplog/z;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/embedapplog/bp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/bytedance/embedapplog/InitConfig;->setProcess(Z)Lcom/bytedance/embedapplog/InitConfig;

    .line 258
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getProcess()I

    move-result v0

    if-ne v0, v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public s()J
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "abtest_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()Ljava/lang/String;
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 274
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_13
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "ab_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lorg/json/JSONObject;
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->f:Lorg/json/JSONObject;

    .line 281
    if-nez v0, :cond_2c

    .line 282
    monitor-enter p0

    .line 284
    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/z;->v()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 285
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/embedapplog/z;->c:Landroid/content/SharedPreferences;

    const-string v3, "ab_configure"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1e
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1c

    move-object v0, v1

    .line 289
    :cond_1b
    goto :goto_1f

    .line 294
    :catchall_1c
    move-exception v0

    goto :goto_2a

    .line 287
    :catch_1e
    move-exception v1

    .line 290
    :goto_1f
    if-nez v0, :cond_26

    .line 291
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 293
    :cond_26
    iput-object v0, p0, Lcom/bytedance/embedapplog/z;->f:Lorg/json/JSONObject;

    .line 294
    monitor-exit p0

    goto :goto_2c

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_1c

    throw v0

    .line 296
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public v()Z
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_ab_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_log_collect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()J
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "session_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/bytedance/embedapplog/z;->e:Landroid/content/SharedPreferences;

    const-string v1, "batch_event_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method z()Ljava/lang/String;
    .registers 2

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method
