.class public Lcom/umeng/umzid/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/umeng/umzid/b$a;

    invoke-direct {v0}, Lcom/umeng/umzid/b$a;-><init>()V

    sput-object v0, Lcom/umeng/umzid/b;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 4

    sget-object v0, Lcom/umeng/umzid/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_23

    const-class v0, Lcom/umeng/umzid/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/umeng/umzid/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/umeng/umzid/b;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/umeng/umzid/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_1e
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    :goto_23
    sget-object v0, Lcom/umeng/umzid/b;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/umeng/umzid/b;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception p0

    const-string p0, "com.umeng.umzid.b"

    const-string v0, "UmengThreadPoolExecutorFactory execute exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method
