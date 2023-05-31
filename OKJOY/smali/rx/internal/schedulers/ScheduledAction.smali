.class public final Lrx/internal/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/ScheduledAction$Remover2;,
        Lrx/internal/schedulers/ScheduledAction$Remover;,
        Lrx/internal/schedulers/ScheduledAction$FutureCompleter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field final action:Lrx/functions/Action0;

.field final cancel:Lrx/internal/util/SubscriptionList;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 40
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Lrx/internal/util/SubscriptionList;)V
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 48
    new-instance v0, Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover2;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/SubscriptionList;)V

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 49
    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    .line 44
    new-instance v0, Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$FutureCompleter;-><init>(Lrx/internal/schedulers/ScheduledAction;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 100
    return-void
.end method

.method public add(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 91
    return-void
.end method

.method public addParent(Lrx/internal/util/SubscriptionList;)V
    .registers 4
    .param p1, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 121
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover2;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/SubscriptionList;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 122
    return-void
.end method

.method public addParent(Lrx/subscriptions/CompositeSubscription;)V
    .registers 4
    .param p1, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 110
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$Remover;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 111
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_c
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_c} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_1f
    .catchall {:try_start_0 .. :try_end_c} :catchall_2e

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    .line 63
    :goto_f
    return-void

    .line 56
    :catch_10
    move-exception v0

    .line 57
    .local v0, "e":Lrx/exceptions/OnErrorNotImplementedException;
    :try_start_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2e

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_f

    .line 58
    .end local v0    # "e":Lrx/exceptions/OnErrorNotImplementedException;
    :catch_1f
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_f

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    throw v1
.end method

.method signalError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "ie"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 68
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 81
    :cond_d
    return-void
.end method
