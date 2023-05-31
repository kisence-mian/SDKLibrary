.class Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;

.field final synthetic val$action:Lcom/tds/common/reactor/functions/Action0;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;Lcom/tds/common/reactor/functions/Action0;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;

    .line 186
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;->this$0:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;

    iput-object p2, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;->val$action:Lcom/tds/common/reactor/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;->this$0:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    return-void

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker$2;->val$action:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 193
    return-void
.end method
