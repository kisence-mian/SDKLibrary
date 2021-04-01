.class public Lcom/bytedance/sdk/adnet/c/e;
.super Ljava/lang/Object;
.source "TNCConfigHandler.java"


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/adnet/c/d;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    .line 29
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    .line 30
    new-instance v0, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    .line 31
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 156
    :try_start_3
    new-instance v1, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    .line 157
    const-string v4, "local_enable"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 158
    const-string v4, "local_enable"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5a

    move v4, v0

    :goto_19
    iput-boolean v4, v1, Lcom/bytedance/sdk/adnet/c/d;->a:Z

    .line 160
    :cond_1b
    const-string v4, "probe_enable"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 161
    const-string v4, "probe_enable"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2c

    move v3, v0

    :cond_2c
    iput-boolean v3, v1, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    .line 164
    :cond_2e
    const-string v3, "local_host_filter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 165
    const-string v3, "local_host_filter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 166
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6b

    .line 168
    :goto_47
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_6b

    .line 169
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 168
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_5a
    move v4, v3

    .line 158
    goto :goto_19

    .line 173
    :cond_5c
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_64} :catch_65

    goto :goto_57

    .line 226
    :catch_65
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    .line 229
    :goto_6a
    return-object v0

    .line 176
    :cond_6b
    :try_start_6b
    iput-object v4, v1, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    .line 189
    :goto_6d
    const-string v0, "host_replace_map"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 190
    const-string v0, "host_replace_map"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 191
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 192
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_ae

    .line 193
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 194
    :cond_8a
    :goto_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 195
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 200
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 178
    :cond_aa
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    goto :goto_6d

    .line 203
    :cond_ae
    iput-object v4, v1, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    .line 215
    :goto_b0
    const-string v0, "req_to_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->e:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->e:I

    .line 216
    const-string v0, "req_to_api_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->f:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->f:I

    .line 217
    const-string v0, "req_to_ip_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->g:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->g:I

    .line 218
    const-string v0, "req_err_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->h:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->h:I

    .line 219
    const-string v0, "req_err_api_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->i:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->i:I

    .line 220
    const-string v0, "req_err_ip_cnt"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->j:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->j:I

    .line 221
    const-string v0, "update_interval"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->k:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->k:I

    .line 222
    const-string v0, "update_random_range"

    iget v3, v1, Lcom/bytedance/sdk/adnet/c/d;->l:I

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/adnet/c/d;->l:I

    .line 223
    const-string v0, "http_code_black"

    iget-object v3, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    move-object v0, v1

    .line 225
    goto/16 :goto_6a

    .line 205
    :cond_10d
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_110} :catch_65

    goto :goto_b0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    if-nez v0, :cond_5

    .line 128
    :goto_4
    return-void

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v1, "ttnet_tnc_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    const-string v1, "tnc_config_str"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 113
    const-string v0, "TNCConfigHandler"

    const-string v1, "loadLocalConfig: no existed"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 117
    :cond_23
    :try_start_23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/c/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_30

    .line 120
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    .line 122
    :cond_30
    const-string v1, "TNCConfigHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_6e

    const-string v0, "null"

    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_4c} :catch_4d

    goto :goto_4

    .line 123
    :catch_4d
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    const-string v1, "TNCConfigHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: except: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 122
    :cond_6e
    :try_start_6e
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_4d

    move-result-object v0

    goto :goto_41
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    iget-boolean v2, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    if-nez v2, :cond_e

    .line 35
    const-string v0, "TNCConfigHandler"

    const-string v1, "handleConfigChanged: no mainProc"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_d
    return-void

    .line 38
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/c/f;->b()V

    .line 39
    const-string v3, ""

    .line 43
    :try_start_17
    const-string v2, "ttnet_url_dispatcher_enabled"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_67

    move v2, v1

    .line 44
    :goto_21
    const-string v1, "ttnet_dispatch_actions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->b()Z

    move-result v5

    if-eqz v5, :cond_cd

    if-eqz v2, :cond_cd

    if-eqz v4, :cond_cd

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 48
    :goto_38
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_69

    .line 49
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 50
    const-string v6, "param"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    const-string v6, "service_name"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    const-string v7, "idc_selection"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 53
    const-string v6, "strategy_info"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_38

    :cond_67
    move v2, v0

    .line 43
    goto :goto_21

    .line 58
    :cond_69
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 62
    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_9b} :catch_9c
    .catchall {:try_start_17 .. :try_end_9b} :catchall_16d

    goto :goto_88

    .line 89
    :catch_9c
    move-exception v0

    .line 90
    :try_start_9d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    new-instance v0, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_16d

    .line 95
    sget-object v1, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_aa
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v2, "ttnet_tnc_config"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v1

    goto/16 :goto_d

    :catchall_c9
    move-exception v0

    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_aa .. :try_end_cb} :catchall_c9

    throw v0

    :cond_cc
    move-object v1, v2

    .line 71
    :cond_cd
    :try_start_cd
    const-string v0, "tnc_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    if-nez v0, :cond_126

    if-nez v1, :cond_126

    .line 73
    const-string v1, "TNCConfigHandler"

    const-string v2, " tnc host_replace_map config is null"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 81
    :goto_df
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/c/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v2

    .line 82
    const-string v4, "TNCConfigHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConfigChanged, newConfig: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_13d

    const-string v0, "null"

    .line 83
    :goto_f4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v4, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_ff} :catch_9c
    .catchall {:try_start_cd .. :try_end_ff} :catchall_16d

    .line 84
    if-nez v2, :cond_142

    .line 95
    sget-object v1, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_104
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v2, "ttnet_tnc_config"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v1

    goto/16 :goto_d

    :catchall_123
    move-exception v0

    monitor-exit v1
    :try_end_125
    .catchall {:try_start_104 .. :try_end_125} :catchall_123

    throw v0

    .line 74
    :cond_126
    if-nez v0, :cond_134

    .line 75
    :try_start_128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string v2, "host_replace_map"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_df

    .line 77
    :cond_134
    if-eqz v1, :cond_13b

    .line 78
    const-string v2, "host_replace_map"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13b
    move-object v1, v0

    goto :goto_df

    .line 83
    :cond_13d
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f4

    .line 87
    :cond_142
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    .line 88
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_147} :catch_9c
    .catchall {:try_start_128 .. :try_end_147} :catchall_16d

    move-result-object v0

    .line 95
    sget-object v1, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_14b
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v3, "ttnet_tnc_config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 99
    const-string v3, "tnc_config_str"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v1

    goto/16 :goto_d

    :catchall_16a
    move-exception v0

    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_14b .. :try_end_16c} :catchall_16a

    throw v0

    .line 95
    :catchall_16d
    move-exception v0

    sget-object v1, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_171
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v4, "ttnet_tnc_config"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 99
    const-string v4, "tnc_config_str"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v1
    :try_end_18e
    .catchall {:try_start_171 .. :try_end_18e} :catchall_18f

    .line 102
    throw v0

    .line 101
    :catchall_18f
    move-exception v0

    :try_start_190
    monitor-exit v1
    :try_end_191
    .catchall {:try_start_190 .. :try_end_191} :catchall_18f

    throw v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 135
    const-string v0, "TNCConfigHandler"

    const-string v1, "loadLocalConfigForOtherProcess, data empty"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_14
    :goto_14
    return-void

    .line 138
    :cond_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/c/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v1

    .line 140
    const-string v2, "TNCConfigHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, config: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_5d

    const-string v0, "null"

    .line 141
    :goto_2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v1, :cond_14

    .line 143
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_14

    .line 145
    :catch_3f
    move-exception v0

    .line 146
    const-string v1, "TNCConfigHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, except: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 141
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_3f

    move-result-object v0

    goto :goto_2f
.end method

.method public c()Lcom/bytedance/sdk/adnet/c/d;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    return-object v0
.end method
