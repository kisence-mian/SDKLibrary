.class public Lcom/umeng/analytics/pro/z;
.super Ljava/lang/Object;
.source "OpenDeviceId.java"


# static fields
.field private static a:Lcom/umeng/analytics/pro/y;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/z;->a:Lcom/umeng/analytics/pro/y;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/z;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/umeng/analytics/pro/z;

    monitor-enter v0

    .line 17
    if-eqz p0, :cond_2a

    .line 21
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_20

    .line 25
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->b(Landroid/content/Context;)V

    .line 27
    sget-object v1, Lcom/umeng/analytics/pro/z;->a:Lcom/umeng/analytics/pro/y;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_28

    if-eqz v1, :cond_1d

    .line 29
    :try_start_16
    invoke-interface {v1, p0}, Lcom/umeng/analytics/pro/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1c
    .catchall {:try_start_16 .. :try_end_1a} :catchall_28

    monitor-exit v0

    return-object p0

    .line 30
    :catch_1c
    move-exception p0

    .line 35
    :cond_1d
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 22
    :cond_20
    :try_start_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :catchall_28
    move-exception p0

    goto :goto_32

    .line 18
    :cond_2a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_28

    .line 16
    :goto_32
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/z;->a:Lcom/umeng/analytics/pro/y;

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/umeng/analytics/pro/z;->b:Z

    if-nez v0, :cond_21

    .line 40
    const-class v0, Lcom/umeng/analytics/pro/z;

    monitor-enter v0

    .line 41
    :try_start_b
    sget-object v1, Lcom/umeng/analytics/pro/z;->a:Lcom/umeng/analytics/pro/y;

    if-nez v1, :cond_1c

    sget-boolean v1, Lcom/umeng/analytics/pro/z;->b:Z

    if-nez v1, :cond_1c

    .line 42
    invoke-static {p0}, Lcom/umeng/analytics/pro/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/y;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/z;->a:Lcom/umeng/analytics/pro/y;

    .line 43
    const/4 p0, 0x1

    sput-boolean p0, Lcom/umeng/analytics/pro/z;->b:Z

    .line 45
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0

    .line 47
    :cond_21
    :goto_21
    return-void
.end method
