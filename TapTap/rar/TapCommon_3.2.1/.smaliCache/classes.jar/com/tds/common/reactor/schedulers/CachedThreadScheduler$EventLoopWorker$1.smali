.class Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;

.field final synthetic val$action:Lcom/tds/common/reactor/functions/Action0;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;Lcom/tds/common/reactor/functions/Action0;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;

    .line 233
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;->this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;

    iput-object p2, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;->val$action:Lcom/tds/common/reactor/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;->this$0:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    return-void

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker$1;->val$action:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 240
    return-void
.end method
