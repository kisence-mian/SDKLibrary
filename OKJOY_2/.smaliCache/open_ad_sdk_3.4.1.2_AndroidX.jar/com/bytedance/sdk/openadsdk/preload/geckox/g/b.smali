.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;
.super Ljava/lang/Object;
.source "SelectChannelVersionLock.java"


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

.field private static b:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->c:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    .line 34
    if-nez v2, :cond_1b

    .line 35
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 36
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1b
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    return-object v1

    .line 40
    :catch_24
    move-exception p0

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    throw p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a()V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b()V

    .line 50
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_26

    .line 51
    if-nez v0, :cond_1c

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    return-void

    .line 54
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    nop

    .line 59
    return-void

    .line 57
    :catchall_26
    move-exception v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    throw v0
.end method
