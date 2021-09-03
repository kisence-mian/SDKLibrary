.class final Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;
.super Ljava/lang/Object;
.source "ScheduledAction.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FutureCompleter"
.end annotation


# instance fields
.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/common/reactor/schedulers/ScheduledAction;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Ljava/util/concurrent/Future;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/schedulers/ScheduledAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 141
    .local p2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->this$0:Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->f:Ljava/util/concurrent/Future;

    .line 143
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->this$0:Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 148
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_19

    .line 150
    :cond_13
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 152
    :goto_19
    return-void
.end method
