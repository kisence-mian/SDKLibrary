.class public Lcom/qq/gdt/action/f;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/f;

.field private static volatile b:Z

.field private static g:Ljava/util/concurrent/Executor;

.field private static h:Landroid/os/Handler;

.field private static final l:Ljava/util/regex/Pattern;


# instance fields
.field private volatile c:Landroid/content/Context;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljavax/crypto/SecretKey;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:Z

.field private q:J

.field private volatile r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qq/gdt/action/f;->b:Z

    const-string v0, "^[a-zA-Z0-9_]{1,32}$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/f;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/qq/gdt/action/f;->j:Ljava/lang/String;

    iput-wide v4, p0, Lcom/qq/gdt/action/f;->n:J

    iput-wide v4, p0, Lcom/qq/gdt/action/f;->o:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/gdt/action/f;->p:Z

    iput-wide v4, p0, Lcom/qq/gdt/action/f;->q:J

    const-string v0, ""

    iput-object v0, p0, Lcom/qq/gdt/action/f;->r:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/f;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/qq/gdt/action/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qq/gdt/action/f$1;-><init>(Lcom/qq/gdt/action/f;Landroid/os/Looper;)V

    sput-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;J)J
    .registers 4

    iput-wide p1, p0, Lcom/qq/gdt/action/f;->q:J

    return-wide p1
.end method

.method public static a()Lcom/qq/gdt/action/f;
    .registers 2

    sget-object v0, Lcom/qq/gdt/action/f;->a:Lcom/qq/gdt/action/f;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/f;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/f;->a:Lcom/qq/gdt/action/f;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/f;

    invoke-direct {v0}, Lcom/qq/gdt/action/f;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/f;->a:Lcom/qq/gdt/action/f;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/f;->a:Lcom/qq/gdt/action/f;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/f;->f:Ljavax/crypto/SecretKey;

    return-object p1
.end method

.method private a(Z)Lorg/json/JSONObject;
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-eqz p1, :cond_1f

    iget-wide v0, p0, Lcom/qq/gdt/action/f;->o:J

    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_22

    const-wide/16 v0, -0x1

    :goto_10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1e} :catch_28

    :goto_1e
    return-object v2

    :cond_1f
    iget-wide v0, p0, Lcom/qq/gdt/action/f;->n:J

    goto :goto_8

    :cond_22
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_10

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/qq/gdt/action/h/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 4

    const-string v0, "GDTAction\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_11

    sget-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/f$3;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/f$3;-><init>(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method private a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    sget-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/f$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/gdt/action/f$4;-><init>(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->s()V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 5

    sget-object v0, Lcom/qq/gdt/action/f;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/qq/gdt/action/f$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/gdt/action/f$2;-><init>(Lcom/qq/gdt/action/f;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/qq/gdt/action/f;)Lorg/json/JSONObject;
    .registers 2

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->r()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/qq/gdt/action/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/gdt/action/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.qq.gdt.action.DeviceIdPref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set device id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/qq/gdt/action/f;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c(Lcom/qq/gdt/action/a/a;)V
    .registers 12

    const-wide/16 v8, 0x0

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_18

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1}, Lcom/qq/gdt/action/a/a;->a(Lorg/json/JSONObject;)V

    :cond_18
    :try_start_18
    invoke-static {v0}, Lcom/qq/gdt/action/h/q;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/qq/gdt/action/h/q;->f(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/qq/gdt/action/h/q;->d(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v6, v2, v8

    if-lez v6, :cond_35

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ams_reserved_last_start_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    cmp-long v2, v4, v8

    if-lez v2, :cond_46

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ams_reserved_last_revised_start_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_46
    cmp-long v2, v0, v8

    if-lez v2, :cond_57

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ams_reserved_last_revised_activate_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v0

    const-string v1, "JSON exception while add last start time info."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57
.end method

.method static synthetic d(Lcom/qq/gdt/action/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->p()V

    return-void
.end method

.method static synthetic e(Lcom/qq/gdt/action/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->t()V

    return-void
.end method

.method static synthetic f(Lcom/qq/gdt/action/f;)Ljavax/crypto/SecretKey;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->f:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static synthetic g(Lcom/qq/gdt/action/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->o()V

    return-void
.end method

.method private o()V
    .registers 3

    invoke-static {}, Lcom/qq/gdt/action/g/b;->a()Lcom/qq/gdt/action/d/f;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/f;->a()I

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    iget-object v1, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a;->a(Z)V

    return-void
.end method

.method private p()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;->newBuilder(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->build()Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->init(Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cErrorCode:02\uff0c\u8bf7\u8054\u7cfb\u5e7f\u70b9\u901a\u8fd0\u8425"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private q()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/qq/gdt/action/h;

    invoke-direct {v1, p0}, Lcom/qq/gdt/action/h;-><init>(Lcom/qq/gdt/action/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string v0, "init\u65b9\u6cd5\u4f20\u5165\u7684Context\u5bf9\u8c61\u4e0d\u662fApplication\u7c7b\u7684\u5b9e\u4f8b\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private r()Lorg/json/JSONObject;
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/gdt/action/f;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v3, "begin_time"

    iget-wide v4, p0, Lcom/qq/gdt/action/f;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_23} :catch_24

    :goto_23
    return-object v2

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method

.method private s()V
    .registers 6

    const/4 v4, 0x1

    sget-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/qq/gdt/action/f;->p:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/b;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1d
    return-void
.end method

.method private t()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    :try_start_2
    const-string v0, "com.bun.miitmdid.core.MdidSdk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/qq/gdt/action/d;

    invoke-direct {v2}, Lcom/qq/gdt/action/d;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "InitSdk"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    const-string v1, "init oaid err"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4a
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/qq/gdt/action/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/qq/gdt/action/f;->b:Z

    if-eqz v0, :cond_c

    const-string v0, "GDTAction\u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\uff0c\u4e0d\u9700\u8981\u518d\u6b21\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    if-nez p1, :cond_17

    :try_start_e
    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_a

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684userActionSetId\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_a

    :cond_29
    iput-object p2, p0, Lcom/qq/gdt/action/f;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684appKey\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_a

    :cond_37
    iput-object p3, p0, Lcom/qq/gdt/action/f;->e:Ljava/lang/String;

    invoke-static {p4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    sget-object v0, Lcom/qq/gdt/action/f;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684channelId\u53c2\u6570\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_a

    :cond_51
    iput-object p4, p0, Lcom/qq/gdt/action/f;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/h/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u786e\u4fddAndroidManifest.xml\u6587\u4ef6\u4e2d\u6dfb\u52a0\u4e86SDK\u9700\u8981\u7684\u6240\u6709\u6743\u9650"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_a

    :cond_61
    invoke-static {}, Lcom/qq/gdt/action/h/s;->a()Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u5fc5\u987b\u5728\'android.app.Application\'\u5b50\u7c7b\u7684onCreate\u65b9\u6cd5\u4e2d\u8c03\u7528\u3002\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-direct {p0, p5, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    goto :goto_a

    :cond_6d
    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/qq/gdt/action/h/q;->g(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->q()V

    invoke-direct {p0, p3, p5}, Lcom/qq/gdt/action/f;->a(Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qq/gdt/action/f;->b:Z
    :try_end_7e
    .catchall {:try_start_17 .. :try_end_7e} :catchall_14

    goto :goto_a
.end method

.method protected a(Lcom/qq/gdt/action/a/a;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f;->c(Lcom/qq/gdt/action/a/a;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/h/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "ACTIVATE_APP"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/qq/gdt/action/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/qq/gdt/action/a/a;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lcom/qq/gdt/action/a;->a([Lcom/qq/gdt/action/a/a;)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v0

    new-array v1, v4, [Lcom/qq/gdt/action/a/a;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/a;->a([Lcom/qq/gdt/action/a/a;)V

    goto :goto_27
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/qq/gdt/action/f;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "userUniqueId\u53c2\u6570\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iput-object p1, p0, Lcom/qq/gdt/action/f;->m:Ljava/lang/String;

    goto :goto_17
.end method

.method protected b(Lcom/qq/gdt/action/a/a;)V
    .registers 5

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/qq/gdt/action/a/a;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/a;->a([Lcom/qq/gdt/action/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/f;->r:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    sget-boolean v0, Lcom/qq/gdt/action/f;->b:Z

    return v0
.end method

.method public c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljavax/crypto/SecretKey;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->f:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public g()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/gdt/action/f;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/f;->o:J

    const-string v0, "ENTER_FOREGROUND"

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/qq/gdt/action/f;->a(Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/qq/gdt/action/h/q;->a(Landroid/content/Context;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/f;->q:J

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->s()V

    invoke-static {}, Lcom/qq/gdt/action/f/d;->b()V

    return-void
.end method

.method public h()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/f;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/f;->n:J

    const-string v0, "ENTER_BACKGROUND"

    invoke-direct {p0, v4}, Lcom/qq/gdt/action/f;->a(Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/qq/gdt/action/h/q;->b(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/a;->a()V

    const-string v0, "TICKET"

    invoke-direct {p0}, Lcom/qq/gdt/action/f;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/qq/gdt/action/f;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/qq/gdt/action/f/d;->c()V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/qq/gdt/action/f;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/qq/gdt/action/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qq.gdt.action.DeviceIdPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f;->s:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lcom/qq/gdt/action/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f;->r:Ljava/lang/String;

    return-object v0
.end method
