.class final Lcom/bytedance/sdk/openadsdk/h/d$5;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d$b;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/d$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/d$b;)V
    .registers 2

    .prologue
    .line 539
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$5;->a:Lcom/bytedance/sdk/openadsdk/h/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 5

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$5;->a:Lcom/bytedance/sdk/openadsdk/h/d$b;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d$b;->offerFirst(Ljava/lang/Object;)Z

    .line 544
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_10

    .line 545
    const-string v0, "TAG_PROXY_TT"

    const-string v1, "task rejected in preloader, put first!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 550
    :cond_10
    :goto_10
    return-void

    .line 547
    :catch_11
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method
