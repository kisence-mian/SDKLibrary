.class public Lcom/bytedance/sdk/openadsdk/playable/c;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/playable/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/playable/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/playable/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/hardware/SensorEventListener;

.field private e:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/playable/e;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/playable/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->d:Landroid/hardware/SensorEventListener;

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/playable/c$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$10;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->e:Landroid/hardware/SensorEventListener;

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->a:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->b:Ljava/lang/ref/WeakReference;

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/playable/c;->c()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/playable/c;->d()Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/a;
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/playable/c;->e()Lcom/bytedance/sdk/openadsdk/playable/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/playable/c;)Landroid/content/Context;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$11;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "adInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$12;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "appInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$13;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "subscribe_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$14;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "download_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$15;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "isViewable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$16;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "getVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$17;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "getScreenSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "start_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "close_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "start_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "close_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$6;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "device_shake"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$7;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "playable_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$8;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "sendReward"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/playable/c$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c$9;-><init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V

    const-string v2, "webview_time_track"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/playable/c;)Landroid/hardware/SensorEventListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->d:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private d()Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/playable/e;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/playable/c;)Landroid/hardware/SensorEventListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->e:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private e()Lcom/bytedance/sdk/openadsdk/playable/a;
    .registers 2

    .line 340
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/playable/c;->d()Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 341
    if-nez v0, :cond_8

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->l()Lcom/bytedance/sdk/openadsdk/playable/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 349
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/playable/c$a;

    .line 350
    if-nez p1, :cond_c

    .line 351
    return-object v0

    .line 353
    :cond_c
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/playable/c$a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return-object p1

    .line 354
    :catchall_11
    move-exception p1

    .line 355
    const-string p2, "PlayableJsBridge"

    const-string v1, "invoke error"

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return-object v0
.end method

.method public b()V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->d:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/g;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/c;->e:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/g;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 363
    return-void
.end method
