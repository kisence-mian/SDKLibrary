.class Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$2;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 83
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$2;->this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$2;->this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkers()V

    .line 87
    return-void
.end method
