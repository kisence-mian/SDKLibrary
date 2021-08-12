.class public final Lcom/anythink/core/b/a/a/d;
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

    iput v0, p0, Lcom/anythink/core/b/a/a/d;->a:I

    .line 23
    iput v0, p0, Lcom/anythink/core/b/a/a/d;->b:I

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
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "slot_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string v4, "size"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iput-object v2, p0, Lcom/anythink/core/b/a/a/d;->c:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/anythink/core/b/a/a/d;->d:Ljava/lang/String;

    .line 46
    iget p3, p3, Lcom/anythink/core/c/c$b;->b:I

    iput p3, p0, Lcom/anythink/core/b/a/a/d;->e:I

    .line 47
    iput-object p4, p0, Lcom/anythink/core/b/a/a/d;->h:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 48
    invoke-virtual {p4, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a/a/d;->g:Ljava/lang/String;

    .line 50
    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 51
    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 52
    array-length p2, p1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5f

    .line 53
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/anythink/core/b/a/a/d;->a:I

    .line 54
    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a/d;->b:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5f} :catch_60

    .line 60
    :cond_5f
    return-void

    .line 58
    :catch_60
    move-exception p1

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/anythink/core/b/a/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/anythink/core/b/a/a/d;->h:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 4

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :try_start_5
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "nw_firm_id"

    iget v2, p0, Lcom/anythink/core/b/a/a/d;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v1, "buyeruid"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "ad_format"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v1, p0, Lcom/anythink/core/b/a/a/d;->f:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 85
    const-string v1, "ad_width"

    iget v2, p0, Lcom/anythink/core/b/a/a/d;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v1, "ad_height"

    iget v2, p0, Lcom/anythink/core/b/a/a/d;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    .line 90
    :cond_40
    goto :goto_42

    .line 88
    :catch_41
    move-exception v1

    .line 91
    :goto_42
    return-object v0
.end method
