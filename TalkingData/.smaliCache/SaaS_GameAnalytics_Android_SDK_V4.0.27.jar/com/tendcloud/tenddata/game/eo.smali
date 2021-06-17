.class public Lcom/tendcloud/tenddata/game/eo;
.super Lorg/json/JSONArray;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "id"

.field private static final b:Ljava/lang/String; = "category"

.field private static final c:Ljava/lang/String; = "name"

.field private static final d:Ljava/lang/String; = "unitPrice"

.field private static final e:Ljava/lang/String; = "count"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/eo;
    .registers 1

    .line 23
    new-instance v0, Lcom/tendcloud/tenddata/game/eo;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/tendcloud/tenddata/game/eo;
    .registers 8

    monitor-enter p0

    .line 27
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 29
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 32
    const-string p1, "category"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_1c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 35
    const-string p1, "name"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_27
    const-string p1, "unitPrice"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string p1, "count"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/eo;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_34} :catch_37
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    .line 42
    goto :goto_3b

    .line 26
    :catchall_35
    move-exception p1

    goto :goto_3d

    .line 40
    :catch_37
    move-exception p1

    .line 41
    :try_start_38
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    .line 43
    :goto_3b
    monitor-exit p0

    return-object p0

    .line 26
    :goto_3d
    monitor-exit p0

    throw p1
.end method
