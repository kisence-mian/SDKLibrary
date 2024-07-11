.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;
.super Ljava/lang/Object;
.source "UsingLock.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->a:Ljava/util/Map;

    monitor-enter v0

    .line 28
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 29
    if-nez v1, :cond_23

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    move-result-object v1

    .line 31
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 34
    :cond_23
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->a:Ljava/util/Map;

    monitor-enter v0

    .line 45
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 46
    if-eqz v1, :cond_2f

    .line 49
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    .line 50
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_27

    .line 52
    if-nez v2, :cond_25

    .line 53
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a()V

    .line 54
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_25
    monitor-exit v0

    .line 57
    return-void

    .line 51
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "using.lock count illegal"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "using.lock illegal state"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->a:Ljava/util/Map;

    monitor-enter v0

    .line 67
    :try_start_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    move-result-object v1

    .line 69
    if-nez v1, :cond_b

    .line 70
    monitor-exit v0

    return-void

    .line 74
    :cond_b
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 75
    if-eqz v2, :cond_2d

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2d

    .line 77
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a()V

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    .line 79
    monitor-exit v0

    return-void

    .line 83
    :cond_2d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 84
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--pending-delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    .line 86
    if-eqz p0, :cond_6a

    .line 87
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a()V

    .line 88
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b()V

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;

    move-result-object p0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c$1;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c$1;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->execute(Ljava/lang/Runnable;)V

    .line 96
    :cond_6a
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw p0
.end method
