.class Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


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

.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 73
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iput-object p2, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 76
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 77
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Evictor)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method
