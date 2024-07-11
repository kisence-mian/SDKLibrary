.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;
.super Ljava/lang/Object;
.source "PiecemealSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->b:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;
    .registers 2

    .line 18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    if-nez v0, :cond_17

    .line 19
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    monitor-enter v0

    .line 20
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    if-nez v1, :cond_12

    .line 21
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    .line 23
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 25
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/j;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
