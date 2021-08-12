.class final Lcom/bytedance/sdk/openadsdk/i/d$5;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d$b;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/d$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/d$b;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$5;->a:Lcom/bytedance/sdk/openadsdk/i/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 544
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/d$5;->a:Lcom/bytedance/sdk/openadsdk/i/d$b;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/i/d$b;->offerFirst(Ljava/lang/Object;)Z

    .line 545
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_10

    .line 546
    const-string p1, "TAG_PROXY_TT"

    const-string p2, "task rejected in preloader, put first!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 550
    :cond_10
    goto :goto_15

    .line 548
    :catchall_11
    move-exception p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 551
    :goto_15
    return-void
.end method
