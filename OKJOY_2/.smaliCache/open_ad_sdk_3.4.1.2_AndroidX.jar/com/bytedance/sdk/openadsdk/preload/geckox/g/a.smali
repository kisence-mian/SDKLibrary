.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;
.super Ljava/lang/Object;
.source "ChannelUpdateLock.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->c:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 30
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 31
    if-nez v1, :cond_13

    .line 32
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 33
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_13
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    .line 36
    const/4 v3, 0x0

    if-nez v2, :cond_1c

    .line 37
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    return-object v3

    .line 39
    :cond_1c
    nop

    .line 42
    :try_start_1d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_30
    .catchall {:try_start_1d .. :try_end_21} :catchall_3e

    .line 47
    nop

    .line 48
    if-nez v2, :cond_29

    .line 49
    :try_start_24
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    monitor-exit v0

    return-object v3

    .line 52
    :cond_29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;)V

    monitor-exit v0

    return-object v1

    .line 43
    :catch_30
    move-exception p0

    .line 44
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;->a(Ljava/lang/Throwable;)V

    .line 46
    monitor-exit v0

    return-object v3

    .line 54
    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_3e

    throw p0
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a()V

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b

    .line 64
    :try_start_d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 66
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    nop

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 64
    :catchall_1b
    move-exception v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    .line 66
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    throw v1

    .line 68
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v1
.end method
