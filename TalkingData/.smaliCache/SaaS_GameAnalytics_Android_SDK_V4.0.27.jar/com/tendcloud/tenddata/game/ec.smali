.class public Lcom/tendcloud/tenddata/game/ec;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "accounts"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 24
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ec;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public c()V
    .registers 9

    .line 30
    const-string v0, "IMEI"

    const-string v1, "accounts"

    :try_start_4
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ec;->a_()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 32
    return-void

    .line 34
    :cond_11
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_82

    .line 36
    const-string v4, "sim"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 37
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v4

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v5

    iget-object v5, v5, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v6

    iget-object v6, v6, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v5, v6}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_83

    .line 38
    const-string v5, "extra"

    if-eqz v4, :cond_62

    .line 39
    :try_start_47
    sget-object v6, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/bb;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v6

    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_61

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 44
    :cond_61
    goto :goto_7f

    .line 45
    :cond_62
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 46
    if-eqz v4, :cond_7f

    .line 47
    const/4 v5, 0x0

    :goto_6d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7f

    .line 48
    const-string v6, "imei"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/tendcloud/tenddata/game/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7c
    .catchall {:try_start_47 .. :try_end_7c} :catchall_83

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 35
    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 56
    :cond_82
    goto :goto_84

    .line 54
    :catchall_83
    move-exception v0

    .line 57
    :goto_84
    return-void
.end method

.method public setUserAccount(Lcom/tendcloud/tenddata/game/dv;)V
    .registers 5

    .line 60
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dv;->a_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3d

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ec;->b:Lorg/json/JSONObject;

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dv;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dv;->a_()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/ec;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    goto :goto_3c

    .line 70
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ec;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dv;->a_()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_34} :catch_35

    .line 75
    goto :goto_3c

    .line 72
    :catch_35
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    :goto_3c
    return-void

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method
