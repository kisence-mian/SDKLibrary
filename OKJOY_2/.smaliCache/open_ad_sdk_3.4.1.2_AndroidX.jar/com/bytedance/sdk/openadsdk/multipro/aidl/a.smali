.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
.super Ljava/lang/Object;
.source "BinderPool.java"


# static fields
.field private static volatile c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Ljava/lang/Object;

.field private f:J

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->e:Ljava/lang/Object;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J

    .line 89
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->g:Landroid/content/ServiceConnection;

    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->h:Landroid/os/IBinder$DeathRecipient;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->h:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;
    .registers 3

    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    if-nez v0, :cond_17

    .line 46
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    monitor-enter v0

    .line 47
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    .line 50
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 52
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->c:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    return-object p0
.end method

.method private declared-synchronized a()V
    .registers 5

    monitor-enter p0

    .line 73
    :try_start_1
    const-string v0, "MultiProcess"

    const-string v1, "BinderPool......connectBinderPoolService"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    const-class v3, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_36

    .line 80
    :try_start_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36

    .line 83
    goto :goto_34

    .line 81
    :catch_2c
    move-exception v0

    .line 82
    :try_start_2d
    const-string v1, "MultiProcess"

    const-string v2, "connectBinderPoolService throws: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_36

    .line 84
    :goto_34
    monitor-exit p0

    return-void

    .line 72
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->d:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/os/IBinder;
    .registers 4

    .line 57
    nop

    .line 60
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->b:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_b

    .line 61
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_c

    move-object v0, p1

    .line 65
    :cond_b
    goto :goto_10

    .line 63
    :catch_c
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    :goto_10
    return-object v0
.end method
