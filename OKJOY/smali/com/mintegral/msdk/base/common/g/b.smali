.class public final Lcom/mintegral/msdk/base/common/g/b;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field public static a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .prologue
    .line 22
    sget-object v0, Lcom/mintegral/msdk/base/common/g/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_21

    .line 23
    new-instance v8, Lcom/mintegral/msdk/base/common/g/b$1;

    invoke-direct {v8}, Lcom/mintegral/msdk/base/common/g/b$1;-><init>()V

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0xc8

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/mintegral/msdk/base/common/g/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    :cond_21
    sget-object v0, Lcom/mintegral/msdk/base/common/g/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
