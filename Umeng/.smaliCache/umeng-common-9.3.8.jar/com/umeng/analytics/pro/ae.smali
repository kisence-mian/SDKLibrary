.class public Lcom/umeng/analytics/pro/ae;
.super Ljava/lang/Object;
.source "SamsungDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# static fields
.field private static final a:Ljava/lang/String; = "DeviceIdService"

.field private static final b:Ljava/lang/String; = "com.samsung.android.deviceidservice"

.field private static final c:Ljava/lang/String; = "com.samsung.android.deviceidservice.DeviceIdService"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private final f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/pro/ae;->d:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/umeng/analytics/pro/ae$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ae$1;-><init>(Lcom/umeng/analytics/pro/ae;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ae;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/ae;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/umeng/analytics/pro/ae;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/ae;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/umeng/analytics/pro/ae;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .line 45
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/umeng/analytics/pro/ae;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 53
    goto :goto_42

    .line 48
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not supported service"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_1e} :catch_1e

    .line 50
    :catch_1e
    move-exception p1

    goto :goto_21

    :catch_20
    move-exception p1

    .line 51
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService failed. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceIdService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/umeng/analytics/pro/ae;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 54
    :goto_42
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ae;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    .line 61
    goto :goto_25

    .line 59
    :catch_6
    move-exception p1

    goto :goto_9

    :catch_8
    move-exception p1

    .line 60
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindService failed. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceIdService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 28
    const-string v0, "DeviceIdService"

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/ae;->e:Ljava/util/concurrent/CountDownLatch;

    .line 30
    :try_start_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ae;->b(Landroid/content/Context;)V

    .line 31
    iget-object v1, p0, Lcom/umeng/analytics/pro/ae;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 32
    const-string v1, "getOAID time-out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1e
    iget-object v0, p0, Lcom/umeng/analytics/pro/ae;->d:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_20} :catch_26
    .catchall {:try_start_a .. :try_end_20} :catchall_24

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ae;->c(Landroid/content/Context;)V

    return-object v0

    :catchall_24
    move-exception v0

    goto :goto_47

    .line 35
    :catch_26
    move-exception v1

    .line 36
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID interrupted. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_24

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ae;->c(Landroid/content/Context;)V

    .line 39
    nop

    .line 40
    const/4 p1, 0x0

    return-object p1

    .line 38
    :goto_47
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ae;->c(Landroid/content/Context;)V

    throw v0
.end method
