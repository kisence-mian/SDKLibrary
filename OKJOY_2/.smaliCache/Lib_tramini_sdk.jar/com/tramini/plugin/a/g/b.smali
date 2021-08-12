.class public final Lcom/tramini/plugin/a/g/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tramini/plugin/a/g/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/g/b;
    .registers 1

    .line 32
    sget-object v0, Lcom/tramini/plugin/a/g/b;->a:Lcom/tramini/plugin/a/g/b;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/tramini/plugin/a/g/b;

    invoke-direct {v0}, Lcom/tramini/plugin/a/g/b;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/b;->a:Lcom/tramini/plugin/a/g/b;

    .line 36
    :cond_b
    sget-object v0, Lcom/tramini/plugin/a/g/b;->a:Lcom/tramini/plugin/a/g/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/tramini/plugin/b/a;)V
    .registers 9

    .line 65
    const-string v0, "S_AJS_ATT"

    const-string v1, "tramini"

    :try_start_4
    new-instance v2, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v2}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 66
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 67
    const/4 v3, 0x2

    iput v3, v2, Lcom/tramini/plugin/a/c/b;->d:I

    .line 68
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v3

    .line 69
    if-eqz v3, :cond_9c

    .line 70
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v5, "adgroup"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v5, "adid"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v5, "campaign"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v5, "clickLabel"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v5, "creative"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v5, "network"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v5, "trackerName"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v5, "trackerToken"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v5, "attr"

    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustAttribution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {v2}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v1, v0, v5}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 87
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_9c
    .catchall {:try_start_4 .. :try_end_9c} :catchall_9d

    .line 94
    :cond_9c
    return-void

    .line 92
    :catchall_9d
    move-exception p0

    .line 95
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/tramini/plugin/b/a;)V
    .registers 9

    .line 99
    const-string v0, "S_ASF_ATT"

    const-string v1, "tramini"

    const-string v2, ""

    :try_start_6
    new-instance v3, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v3}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 100
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 101
    const/4 v4, 0x1

    iput v4, v3, Lcom/tramini/plugin/a/c/b;->d:I

    .line 102
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appsflyer-data"

    const-string v6, "attributionId"

    invoke-static {v4, v5, v6, v2}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 105
    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v3}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v0, v2}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v3, :cond_60

    .line 110
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 111
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_61

    .line 118
    :cond_60
    return-void

    .line 116
    :catchall_61
    move-exception p0

    .line 119
    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Lcom/tramini/plugin/b/a;)V
    .registers 9

    .line 24
    const-string v0, "S_ASF_ATT"

    const-string v1, "tramini"

    const-string v2, ""

    .line 1099
    :try_start_6
    new-instance v3, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v3}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 1100
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 1101
    const/4 v4, 0x1

    iput v4, v3, Lcom/tramini/plugin/a/c/b;->d:I

    .line 1102
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appsflyer-data"

    const-string v6, "attributionId"

    invoke-static {v4, v5, v6, v2}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 1105
    iput-object v4, v3, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 1106
    invoke-virtual {v3}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 1107
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v0, v2}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    if-eqz v3, :cond_60

    .line 1110
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 1111
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_61

    .line 1118
    :cond_60
    return-void

    .line 1116
    :catchall_61
    move-exception p0

    .line 24
    return-void
.end method

.method private static synthetic d(Ljava/lang/String;Lcom/tramini/plugin/b/a;)V
    .registers 9

    .line 24
    const-string v0, "S_AJS_ATT"

    const-string v1, "tramini"

    .line 2065
    :try_start_4
    new-instance v2, Lcom/tramini/plugin/a/c/b;

    invoke-direct {v2}, Lcom/tramini/plugin/a/c/b;-><init>()V

    .line 2066
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    .line 2067
    const/4 v3, 0x2

    iput v3, v2, Lcom/tramini/plugin/a/c/b;->d:I

    .line 2068
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v3

    .line 2069
    if-eqz v3, :cond_9c

    .line 2070
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2071
    const-string v5, "adgroup"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2072
    const-string v5, "adid"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2073
    const-string v5, "campaign"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2074
    const-string v5, "clickLabel"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2075
    const-string v5, "creative"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2076
    const-string v5, "network"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2077
    const-string v5, "trackerName"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2078
    const-string v5, "trackerToken"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2079
    const-string v5, "attr"

    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustAttribution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2081
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    .line 2082
    invoke-virtual {v2}, Lcom/tramini/plugin/a/c/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 2083
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v1, v0, v5}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2086
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 2087
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/tramini/plugin/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_9c
    .catchall {:try_start_4 .. :try_end_9c} :catchall_9d

    .line 2094
    :cond_9c
    return-void

    .line 2092
    :catchall_9d
    move-exception p0

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/b/a;)V
    .registers 4

    .line 40
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/g/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/g/b$1;-><init>(Lcom/tramini/plugin/a/g/b;Lcom/tramini/plugin/b/a;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
