.class public Lcom/tendcloud/tenddata/game/en;
.super Lorg/json/JSONObject;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "keyOrderId"

.field public static final b:Ljava/lang/String; = "keyTotalPrice"

.field public static final c:Ljava/lang/String; = "keyCurrencyType"

.field public static final d:Ljava/lang/String; = "keyOrderDetail"

.field private static final e:Ljava/lang/String; = "id"

.field private static final f:Ljava/lang/String; = "category"

.field private static final g:Ljava/lang/String; = "name"

.field private static final h:Ljava/lang/String; = "unitPrice"

.field private static final i:Ljava/lang/String; = "count"


# instance fields
.field private j:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    .line 31
    :try_start_6
    const-string v0, "keyOrderId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/en;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string p1, "keyTotalPrice"

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/en;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string p1, "keyCurrencyType"

    invoke-virtual {p0, p1, p3}, Lcom/tendcloud/tenddata/game/en;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_15} :catch_16

    .line 36
    goto :goto_17

    .line 34
    :catch_16
    move-exception p1

    .line 37
    :goto_17
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/tendcloud/tenddata/game/en;
    .registers 5

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOrder called --> orderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,totalPrice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,currencyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 46
    const-string v0, "createOrder: orderId could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 48
    :cond_35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4b

    .line 49
    :cond_46
    const-string v0, "createOrder: currencyType length must be 3 ,likes CNY"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4c

    .line 53
    :cond_4b
    goto :goto_4d

    .line 51
    :catchall_4c
    move-exception v0

    .line 54
    :goto_4d
    new-instance v0, Lcom/tendcloud/tenddata/game/en;

    invoke-direct {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/en;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;II)Lcom/tendcloud/tenddata/game/en;
    .registers 7

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    if-nez v0, :cond_11

    .line 60
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    .line 61
    const-string v1, "keyOrderDetail"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/en;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 65
    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 68
    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_2c
    const-string p1, "unitPrice"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string p1, "count"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_3b} :catch_3f
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    .line 76
    goto :goto_40

    .line 58
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 74
    :catch_3f
    move-exception p1

    .line 77
    :goto_40
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/tendcloud/tenddata/game/en;
    .registers 8

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    if-nez v0, :cond_11

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    .line 83
    const-string v1, "keyOrderDetail"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/en;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 87
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 90
    const-string p1, "category"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_2c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 93
    const-string p1, "name"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_37
    const-string p1, "unitPrice"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string p1, "count"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/en;->j:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_46} :catch_4a
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    .line 100
    goto :goto_4b

    .line 80
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1

    .line 98
    :catch_4a
    move-exception p1

    .line 101
    :goto_4b
    monitor-exit p0

    return-object p0
.end method
