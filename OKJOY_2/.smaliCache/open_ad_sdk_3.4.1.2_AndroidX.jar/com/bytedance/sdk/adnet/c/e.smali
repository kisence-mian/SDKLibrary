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

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

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
    new-instance p1, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    .line 31
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;
    .registers 11

    .line 156
    const-string v0, "host_replace_map"

    const-string v1, "local_host_filter"

    const-string v2, "probe_enable"

    const-string v3, "local_enable"

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {v5}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    .line 157
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_21

    .line 158
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    move v3, v8

    goto :goto_1f

    :cond_1e
    move v3, v7

    :goto_1f
    iput-boolean v3, v5, Lcom/bytedance/sdk/adnet/c/d;->a:Z

    .line 160
    :cond_21
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 161
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    move v7, v8

    :cond_2e
    iput-boolean v7, v5, Lcom/bytedance/sdk/adnet/c/d;->b:Z

    .line 164
    :cond_30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_61

    .line 168
    move v3, v8

    :goto_46
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_61

    .line 169
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 171
    goto :goto_5e

    .line 173
    :cond_57
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 176
    :cond_61
    iput-object v2, v5, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    .line 177
    goto :goto_66

    .line 178
    :cond_64
    iput-object v4, v5, Lcom/bytedance/sdk/adnet/c/d;->c:Ljava/util/Map;

    .line 189
    :goto_66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 190
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_a0

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 194
    :cond_7f
    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 198
    goto :goto_7f

    .line 200
    :cond_9c
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    goto :goto_7f

    .line 203
    :cond_a0
    iput-object v1, v5, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    .line 204
    goto :goto_a5

    .line 205
    :cond_a3
    iput-object v4, v5, Lcom/bytedance/sdk/adnet/c/d;->d:Ljava/util/Map;

    .line 215
    :goto_a5
    const-string v0, "req_to_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->e:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->e:I

    .line 216
    const-string v0, "req_to_api_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->f:I

    .line 217
    const-string v0, "req_to_ip_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->g:I

    .line 218
    const-string v0, "req_err_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->h:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->h:I

    .line 219
    const-string v0, "req_err_api_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->i:I

    .line 220
    const-string v0, "req_err_ip_cnt"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->j:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->j:I

    .line 221
    const-string v0, "update_interval"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->k:I

    .line 222
    const-string v0, "update_random_range"

    iget v1, v5, Lcom/bytedance/sdk/adnet/c/d;->l:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/adnet/c/d;->l:I

    .line 223
    const-string v0, "http_code_black"

    iget-object v1, v5, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/bytedance/sdk/adnet/c/d;->m:Ljava/lang/String;
    :try_end_ff
    .catchall {:try_start_9 .. :try_end_ff} :catchall_100

    .line 225
    return-object v5

    .line 226
    :catchall_100
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    return-object v4
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 106
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    if-nez v0, :cond_5

    .line 107
    return-void

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "ttnet_tnc_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TNCConfigHandler"

    if-eqz v1, :cond_23

    .line 113
    const-string v0, "loadLocalConfig: no existed"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_40

    const-string v0, "null"

    goto :goto_44

    :cond_40
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_50

    .line 126
    goto :goto_6e

    .line 123
    :catchall_50
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: except: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_6e
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 12

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/c/e;->c:Z

    if-nez v0, :cond_c

    .line 35
    const-string p1, "TNCConfigHandler"

    const-string v0, "handleConfigChanged: no mainProc"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->b()V

    .line 39
    const-string v0, ""

    .line 43
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_17
    const-string v3, "ttnet_url_dispatcher_enabled"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 44
    :goto_22
    const-string v4, "ttnet_dispatch_actions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->b()Z

    move-result v6

    if-eqz v6, :cond_9b

    if-eqz v3, :cond_9b

    if-eqz v4, :cond_9b

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    move v6, v2

    :goto_39
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_67

    .line 49
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 50
    const-string v8, "param"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 51
    const-string v8, "service_name"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    const-string v9, "idc_selection"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 53
    const-string v8, "strategy_info"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 54
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 58
    :cond_67
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 59
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 62
    :goto_86
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    goto :goto_86

    .line 67
    :cond_9a
    goto :goto_76

    .line 71
    :cond_9b
    const-string v3, "tnc_config"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 72
    if-nez p1, :cond_ad

    if-nez v5, :cond_ad

    .line 73
    const-string v3, "TNCConfigHandler"

    const-string v4, " tnc host_replace_map config is null"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/adnet/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 74
    :cond_ad
    if-nez p1, :cond_ba

    .line 75
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string v3, "host_replace_map"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c1

    .line 77
    :cond_ba
    if-eqz v5, :cond_c1

    .line 78
    const-string v3, "host_replace_map"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_c1
    :goto_c1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/c/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v3

    .line 82
    const-string v4, "TNCConfigHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConfigChanged, newConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_d7

    const-string v6, "null"

    goto :goto_db

    .line 83
    :cond_d7
    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_db
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v4, v5}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catchall {:try_start_17 .. :try_end_e6} :catchall_132

    .line 84
    if-nez v3, :cond_10a

    .line 95
    sget-object v4, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 96
    :try_start_eb
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v3, "ttnet_tnc_config"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 99
    const-string v2, "tnc_config_str"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v4

    .line 85
    return-void

    .line 101
    :catchall_107
    move-exception p1

    monitor-exit v4
    :try_end_109
    .catchall {:try_start_eb .. :try_end_109} :catchall_107

    throw p1

    .line 87
    :cond_10a
    :try_start_10a
    iput-object v3, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    .line 88
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_132

    .line 95
    sget-object v3, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_113
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v4, "ttnet_tnc_config"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/adnet/d/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v3

    goto :goto_15b

    :catchall_12f
    move-exception p1

    monitor-exit v3
    :try_end_131
    .catchall {:try_start_113 .. :try_end_131} :catchall_12f

    throw p1

    .line 89
    :catchall_132
    move-exception p1

    .line 90
    :try_start_133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    new-instance p1, Lcom/bytedance/sdk/adnet/c/d;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/c/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_160

    .line 95
    sget-object p1, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_140
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v4, "ttnet_tnc_config"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit p1

    .line 102
    :goto_15b
    nop

    .line 103
    return-void

    .line 101
    :catchall_15d
    move-exception v0

    monitor-exit p1
    :try_end_15f
    .catchall {:try_start_140 .. :try_end_15f} :catchall_15d

    throw v0

    .line 95
    :catchall_160
    move-exception p1

    sget-object v3, Lcom/bytedance/sdk/adnet/c/e;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_164
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const-string v5, "ttnet_tnc_config"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 99
    const-string v4, "tnc_config_str"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    monitor-exit v3
    :try_end_17f
    .catchall {:try_start_164 .. :try_end_17f} :catchall_180

    .line 102
    throw p1

    .line 101
    :catchall_180
    move-exception p1

    :try_start_181
    monitor-exit v3
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw p1
.end method

.method public b()V
    .registers 5

    .line 133
    const-string v0, "TNCConfigHandler"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/c/e;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/d/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 135
    const-string v1, "loadLocalConfigForOtherProcess, data empty"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 138
    :cond_15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/adnet/c/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/adnet/c/d;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_2e

    const-string v3, "null"

    goto :goto_32

    .line 141
    :cond_2e
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/c/d;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v1, :cond_41

    .line 143
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    .line 147
    :cond_41
    goto :goto_5d

    .line 145
    :catchall_42
    move-exception v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, except: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_5d
    return-void
.end method

.method public c()Lcom/bytedance/sdk/adnet/c/d;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/e;->b:Lcom/bytedance/sdk/adnet/c/d;

    return-object v0
.end method
