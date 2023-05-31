.class Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iput-object p2, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    :goto_8
    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_8
.end method
