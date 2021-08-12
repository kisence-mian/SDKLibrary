.class final Lcom/tramini/plugin/a/g/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/g/b;->a(Lcom/tramini/plugin/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/g/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/g/b;Lcom/tramini/plugin/b/a;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/tramini/plugin/a/g/b$1;->b:Lcom/tramini/plugin/a/g/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/g/b$1;->a:Lcom/tramini/plugin/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 43
    iget-object v0, p0, Lcom/tramini/plugin/a/g/b$1;->b:Lcom/tramini/plugin/a/g/b;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/tramini/plugin/a/g/b$1;->a:Lcom/tramini/plugin/b/a;

    invoke-virtual {v1}, Lcom/tramini/plugin/b/a;->a()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_124

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    .line 46
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_127

    return-void

    .line 48
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/tramini/plugin/a/g/b$1;->a:Lcom/tramini/plugin/b/a;

    invoke-static {v1}, Lcom/tramini/plugin/a/g/g;->a(Lcom/tramini/plugin/b/a;)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v3, p0, Lcom/tramini/plugin/a/g/b$1;->a:Lcom/tramini/plugin/b/a;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_124

    .line 1024
    nop

    .line 1099
    :try_start_17
    new-instance v4, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v4}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 1100
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 1101
    iput v2, v4, Lcom/tramini/plugin/a/c/b;->d:I

    .line 1102
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v2

    const-string v5, "appsflyer-data"

    const-string v6, "attributionId"

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1105
    iput-object v2, v4, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 1106
    invoke-virtual {v4}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 1107
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v5

    const-string v6, "tramini"

    const-string v7, "S_ASF_ATT"

    const-string v8, ""

    invoke-static {v5, v6, v7, v8}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1109
    if-eqz v4, :cond_7c

    .line 1110
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1111
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v5

    const-string v6, "tramini"

    const-string v7, "S_ASF_ATT"

    invoke-static {v5, v6, v7, v2}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_7c
    .catchall {:try_start_17 .. :try_end_7c} :catchall_7d

    .line 1118
    :cond_7c
    goto :goto_7e

    .line 1116
    :catchall_7d
    move-exception v2

    .line 52
    :goto_7e
    :try_start_7e
    iget-object v2, p0, Lcom/tramini/plugin/a/g/b$1;->a:Lcom/tramini/plugin/b/a;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_124

    .line 2024
    nop

    .line 2065
    :try_start_81
    new-instance v3, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v3}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 2066
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 2067
    const/4 v4, 0x2

    iput v4, v3, Lcom/tramini/plugin/a/c/b;->d:I

    .line 2068
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v4

    .line 2069
    if-eqz v4, :cond_121

    .line 2070
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2071
    const-string v6, "adgroup"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2072
    const-string v6, "adid"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2073
    const-string v6, "campaign"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2074
    const-string v6, "clickLabel"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2075
    const-string v6, "creative"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2076
    const-string v6, "network"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2077
    const-string v6, "trackerName"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2078
    const-string v6, "trackerToken"

    iget-object v7, v4, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2079
    const-string v6, "attr"

    invoke-virtual {v4}, Lcom/adjust/sdk/AdjustAttribution;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2081
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 2082
    invoke-virtual {v3}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 2083
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v4

    const-string v6, "tramini"

    const-string v7, "S_AJS_ATT"

    const-string v8, ""

    invoke-static {v4, v6, v7, v8}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2086
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 2087
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v4

    const-string v6, "tramini"

    const-string v7, "S_AJS_ATT"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v7, v5}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_121
    .catchall {:try_start_81 .. :try_end_121} :catchall_122

    .line 2094
    :cond_121
    goto :goto_125

    .line 2092
    :catchall_122
    move-exception v1

    .line 56
    goto :goto_125

    .line 54
    :catchall_124
    move-exception v1

    .line 57
    :goto_125
    :try_start_125
    monitor-exit v0

    return-void

    :catchall_127
    move-exception v1

    monitor-exit v0
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_127

    throw v1
.end method
