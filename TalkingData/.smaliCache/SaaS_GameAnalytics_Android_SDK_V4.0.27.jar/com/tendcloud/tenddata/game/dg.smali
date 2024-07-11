.class final Lcom/tendcloud/tenddata/game/dg;
.super Landroid/content/BroadcastReceiver;
.source "td"


# instance fields
.field a:Lcom/tendcloud/tenddata/game/cj;

.field b:Ljava/util/ArrayList;

.field c:Lorg/json/JSONArray;

.field d:Lcom/tendcloud/tenddata/game/ci;

.field e:Lcom/tendcloud/tenddata/game/ci;

.field f:J

.field g:J

.field private h:J

.field private i:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .registers 4

    .line 328
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 317
    new-instance v0, Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cj;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->a:Lcom/tendcloud/tenddata/game/cj;

    .line 323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/dg;->f:J

    .line 324
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/dg;->g:J

    .line 325
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/dg;->h:J

    .line 329
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dg;->i:Landroid/net/wifi/WifiManager;

    .line 330
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dg;)J
    .registers 3

    .line 316
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/dg;->h:J

    return-wide v0
.end method

.method private a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;
    .registers 12

    .line 419
    nop

    .line 420
    if-eqz p1, :cond_42

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 424
    :try_start_f
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 425
    new-instance v9, Lcom/tendcloud/tenddata/game/ce;

    const-string v3, "SSID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "BSSID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "level"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 426
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_32

    .line 429
    goto :goto_36

    .line 427
    :catchall_32
    move-exception v2

    .line 428
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 422
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 431
    :cond_39
    new-instance p1, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {p1}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    .line 432
    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/ci;->setBsslist(Ljava/util/List;)V

    goto :goto_43

    .line 420
    :cond_42
    const/4 p1, 0x0

    .line 434
    :goto_43
    return-object p1
.end method

.method private a()V
    .registers 3

    .line 367
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 368
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 369
    const-string v1, "wifiUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 370
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 371
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 375
    goto :goto_1d

    .line 372
    :catchall_19
    move-exception v0

    .line 374
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 376
    :goto_1d
    return-void
.end method

.method private b()Lcom/tendcloud/tenddata/game/ci;
    .registers 2

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->c:Lorg/json/JSONArray;

    .line 381
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/dg;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 384
    goto :goto_d

    .line 382
    :catchall_9
    move-exception v0

    .line 383
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 385
    :goto_d
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->d:Lcom/tendcloud/tenddata/game/ci;

    return-object v0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/dg;)Lcom/tendcloud/tenddata/game/ci;
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dg;->b()Lcom/tendcloud/tenddata/game/ci;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/tendcloud/tenddata/game/ci;
    .registers 6

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_6f

    .line 393
    if-eqz v0, :cond_6e

    .line 395
    :try_start_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 396
    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 397
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x4b

    if-ge v2, v3, :cond_29

    goto :goto_5e

    .line 398
    :cond_29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 399
    const-string v3, "SSID"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v3, "BSSID"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v3, "level"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 402
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 396
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 404
    :cond_61
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->c:Lorg/json/JSONArray;

    .line 405
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/dg;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->e:Lcom/tendcloud/tenddata/game/ci;
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_6a

    .line 409
    goto :goto_6e

    .line 406
    :catchall_6a
    move-exception v0

    .line 408
    :try_start_6b
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    .line 414
    :cond_6e
    :goto_6e
    goto :goto_73

    .line 411
    :catchall_6f
    move-exception v0

    .line 413
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 415
    :goto_73
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dg;->e:Lcom/tendcloud/tenddata/game/ci;

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/dg;)V
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dg;->a()V

    return-void
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/game/dg;)Lcom/tendcloud/tenddata/game/ci;
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dg;->c()Lcom/tendcloud/tenddata/game/ci;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 333
    sget-object p1, Lcom/tendcloud/tenddata/game/cy;->a:Landroid/os/Handler;

    new-instance p2, Lcom/tendcloud/tenddata/game/dh;

    invoke-direct {p2, p0}, Lcom/tendcloud/tenddata/game/dh;-><init>(Lcom/tendcloud/tenddata/game/dg;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method
