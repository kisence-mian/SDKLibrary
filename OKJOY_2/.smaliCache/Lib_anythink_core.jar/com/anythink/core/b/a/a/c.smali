.class public final Lcom/anythink/core/b/a/a/c;
.super Lcom/anythink/core/b/a/a/b;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field g:Ljava/lang/String;

.field h:Lcom/anythink/core/api/ATBaseAdAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 10

    .line 32
    invoke-direct {p0, p2}, Lcom/anythink/core/b/a/a/b;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/a/a/c;->a:I

    .line 23
    iput v0, p0, Lcom/anythink/core/b/a/a/c;->b:I

    .line 35
    :try_start_8
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 38
    goto :goto_d

    .line 36
    :catchall_c
    move-exception v1

    .line 39
    :goto_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "appkey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    const-string v3, "unitid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v4, "size"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iput-object v2, p0, Lcom/anythink/core/b/a/a/c;->c:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/anythink/core/b/a/a/c;->d:Ljava/lang/String;

    .line 47
    iget p3, p3, Lcom/anythink/core/c/c$b;->b:I

    iput p3, p0, Lcom/anythink/core/b/a/a/c;->e:I

    .line 48
    iput-object p4, p0, Lcom/anythink/core/b/a/a/c;->h:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 49
    invoke-virtual {p4, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a/a/c;->g:Ljava/lang/String;

    .line 51
    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 52
    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 53
    array-length p2, p1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_64

    .line 54
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/anythink/core/b/a/a/c;->a:I

    .line 55
    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a/c;->b:I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_64} :catch_65

    .line 61
    :cond_64
    return-void

    .line 59
    :catch_65
    move-exception p1

    .line 63
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/anythink/core/b/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/anythink/core/b/a/a/c;->h:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 4

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_5
    const-string v1, "display_manager_ver"

    .line 1072
    iget-object v2, p0, Lcom/anythink/core/b/a/a/c;->h:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "nw_firm_id"

    iget v2, p0, Lcom/anythink/core/b/a/a/c;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v1, "buyeruid"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "ad_format"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/anythink/core/b/a/a/c;->f:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 87
    const-string v1, "ad_width"

    iget v2, p0, Lcom/anythink/core/b/a/a/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v1, "ad_height"

    iget v2, p0, Lcom/anythink/core/b/a/a/c;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4b} :catch_4c

    .line 92
    :cond_4b
    goto :goto_4d

    .line 90
    :catch_4c
    move-exception v1

    .line 93
    :goto_4d
    return-object v0
.end method
