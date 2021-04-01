.class public Lcom/bytedance/embedapplog/b/h;
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

.field private volatile h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/h;->a:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    .line 111
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->a:Landroid/content/Context;

    const-string v1, "embed_applog_stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    .line 112
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->a:Landroid/content/Context;

    const-string v1, "embed_header_custom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    .line 113
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->a:Landroid/content/Context;

    const-string v1, "embed_last_sp_session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/h;->d:Landroid/content/SharedPreferences;

    .line 114
    return-void
.end method


# virtual methods
.method public A()J
    .registers 5

    .prologue
    .line 397
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "session_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()J
    .registers 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "batch_event_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method D()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getReleaseBuild()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method E()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()J
    .registers 3

    .prologue
    .line 442
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()I
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public I()I
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getUpdateVersionCode()I

    move-result v0

    return v0
.end method

.method public J()I
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getManifestVersionCode()I

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbClient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbFeature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getVersionMinor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAppImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public R()Z
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->isMacEnable()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->isImeiEnable()Z

    move-result v0

    return v0
.end method

.method public T()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getZiJieCloudPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAliyunUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .prologue
    .line 438
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_last_day"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_order"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "header_custom_info"

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    return-void

    .line 309
    :cond_16
    const-string v0, ""

    goto :goto_e
.end method

.method public a(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 12

    .prologue
    .line 151
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_1f

    .line 152
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

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_1f
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/h;->g:Lorg/json/JSONObject;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 161
    const-string v3, "session_interval"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    .line 162
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_108

    const-wide/32 v6, 0x93a80

    cmp-long v3, v4, v6

    if-gtz v3, :cond_108

    .line 163
    const-string v3, "session_interval"

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 168
    :goto_48
    const-string v3, "batch_event_interval"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    .line 169
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_10f

    const-wide/32 v6, 0x93a80

    cmp-long v3, v4, v6

    if-gtz v3, :cond_10f

    .line 170
    const-string v3, "batch_event_interval"

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    :goto_65
    const-string v3, "send_launch_timely"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 176
    if-lez v3, :cond_116

    int-to-long v4, v3

    const-wide/32 v6, 0x93a80

    cmp-long v4, v4, v6

    if-gtz v4, :cond_116

    .line 177
    const-string v4, "send_launch_timely"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    :goto_7b
    const-string v3, "abtest_fetch_interval"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    .line 183
    const-wide/16 v6, 0x14

    cmp-long v3, v4, v6

    if-lez v3, :cond_11d

    const-wide/32 v6, 0x93a80

    cmp-long v3, v4, v6

    if-gtz v3, :cond_11d

    .line 184
    const-string v3, "abtest_fetch_interval"

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 189
    :goto_98
    const-string v3, "bav_log_collect"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 190
    if-eqz v3, :cond_124

    .line 191
    const-string v4, "bav_log_collect"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    :goto_a7
    sput-boolean v3, Lcom/bytedance/embedapplog/util/h;->a:Z

    .line 197
    const-string v3, "bav_ab_config"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 198
    if-eqz v3, :cond_12b

    .line 199
    const-string v3, "bav_ab_config"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    :goto_b8
    const-string v3, "fingerprint_codes"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_131

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_131

    .line 206
    const-string v4, "fingerprint_codes"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    :goto_cf
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/bytedance/embedapplog/b/h;->h:Ljava/util/HashSet;

    .line 212
    const-string v3, "bav_monitor_rate"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 213
    if-lez v3, :cond_137

    const/16 v4, 0x64

    if-gt v3, v4, :cond_137

    .line 214
    const-string v4, "bav_monitor_rate"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/bytedance/embedapplog/util/g;->a(Z)V

    .line 221
    :goto_e8
    if-eqz p2, :cond_ef

    .line 222
    const-string v3, "send_fingerprint_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 225
    :cond_ef
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 226
    const-string v3, "last_wifi_bssid"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v3, "last_check_bssid_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    :cond_ff
    const-string v3, "app_log_last_config_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    return-void

    .line 165
    :cond_108
    const-string v3, "session_interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_48

    .line 172
    :cond_10f
    const-string v3, "batch_event_interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_65

    .line 179
    :cond_116
    const-string v3, "send_launch_timely"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7b

    .line 186
    :cond_11d
    const-string v3, "abtest_fetch_interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_98

    .line 193
    :cond_124
    const-string v4, "bav_log_collect"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_a7

    .line 201
    :cond_12b
    const-string v3, "bav_ab_config"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_b8

    .line 208
    :cond_131
    const-string v3, "fingerprint_codes"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_cf

    .line 217
    :cond_137
    const-string v3, "bav_monitor_rate"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/bytedance/embedapplog/util/g;->a(Z)V

    goto :goto_e8
.end method

.method public a(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_last_day"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    return-void
.end method

.method b(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 345
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

    invoke-static {v0, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ab_configure"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    iput-object v3, p0, Lcom/bytedance/embedapplog/b/h;->f:Lorg/json/JSONObject;

    .line 349
    return-void
.end method

.method public c()I
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/h;->x()Lorg/json/JSONObject;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 504
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->isPlayEnable()Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()J
    .registers 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->h:Ljava/util/HashSet;

    .line 241
    if-nez v0, :cond_3a

    .line 243
    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "fingerprint_codes"

    const-string v3, "[]"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v3, :cond_38

    .line 247
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 248
    if-lez v4, :cond_2c

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2c} :catch_2f

    .line 246
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 252
    :catch_2f
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 256
    :cond_38
    iput-object v0, p0, Lcom/bytedance/embedapplog/b/h;->h:Ljava/util/HashSet;

    .line 258
    :cond_3a
    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 264
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "send_fingerprint_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 266
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_wifi_bssid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/h;->h()Ljava/util/HashSet;

    move-result-object v0

    .line 277
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 278
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_check_bssid_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 280
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public l()I
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_monitor_rate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getGoogleAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method r()Ljava/lang/String;
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    const-string v1, "header_custom_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method s()Ljava/lang/String;
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    const-string v1, "user_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getProcess()I

    move-result v0

    if-nez v0, :cond_1e

    .line 335
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Lcom/bytedance/embedapplog/InitConfig;->setProcess(Z)Lcom/bytedance/embedapplog/InitConfig;

    .line 337
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getProcess()I

    move-result v0

    if-ne v0, v1, :cond_29

    :goto_26
    return v1

    :cond_27
    move v0, v2

    .line 335
    goto :goto_1b

    :cond_29
    move v1, v2

    .line 337
    goto :goto_26
.end method

.method public v()J
    .registers 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "abtest_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Ljava/lang/String;
    .registers 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 353
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->b:Lcom/bytedance/embedapplog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getAbVersion()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    const-string v1, "ab_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public x()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 359
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/h;->f:Lorg/json/JSONObject;

    .line 360
    if-nez v1, :cond_25

    .line 361
    monitor-enter p0

    .line 363
    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/h;->y()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/embedapplog/b/h;->c:Landroid/content/SharedPreferences;

    const-string v3, "ab_configure"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_29
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    :goto_1a
    move-object v1, v0

    .line 369
    :goto_1b
    if-nez v1, :cond_22

    .line 370
    :try_start_1d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 372
    :cond_22
    iput-object v1, p0, Lcom/bytedance/embedapplog/b/h;->f:Lorg/json/JSONObject;

    .line 373
    monitor-exit p0

    .line 375
    :cond_25
    return-object v1

    .line 373
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw v0

    .line 366
    :catch_29
    move-exception v0

    goto :goto_1b

    :cond_2b
    move-object v0, v1

    goto :goto_1a
.end method

.method public y()Z
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_ab_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_log_collect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
