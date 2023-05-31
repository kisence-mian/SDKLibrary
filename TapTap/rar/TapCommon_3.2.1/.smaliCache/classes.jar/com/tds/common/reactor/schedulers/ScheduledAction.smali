.class public final Lcom/tds/common/reactor/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;,
        Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;,
        Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lcom/tds/common/reactor/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field final action:Lcom/tds/common/reactor/functions/Action0;

.field final cancel:Lcom/tds/common/reactor/util/SubscriptionList;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/functions/Action0;)V
    .registers 3
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    .line 42
    new-instance v0, Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-direct {v0}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "parent"    # Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 44
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    .line 46
    new-instance v0, Lcom/tds/common/reactor/util/SubscriptionList;

    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p2}, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover;-><init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>(Lcom/tds/common/reactor/Subscription;)V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/util/SubscriptionList;)V
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "parent"    # Lcom/tds/common/reactor/util/SubscriptionList;

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    .line 50
    new-instance v0, Lcom/tds/common/reactor/util/SubscriptionList;

    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p2}, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;-><init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Lcom/tds/common/reactor/util/SubscriptionList;)V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>(Lcom/tds/common/reactor/Subscription;)V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 51
    return-void
.end method


# virtual methods
.method public add(Lcom/tds/common/reactor/Subscription;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 117
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 118
    return-void
.end method

.method public add(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 121
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/schedulers/ScheduledAction$FutureCompleter;-><init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 122
    return-void
.end method

.method public addParent(Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V
    .registers 4
    .param p1, "parent"    # Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 129
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover;-><init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 130
    return-void
.end method

.method public addParent(Lcom/tds/common/reactor/util/SubscriptionList;)V
    .registers 4
    .param p1, "parent"    # Lcom/tds/common/reactor/util/SubscriptionList;

    .line 125
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/reactor/schedulers/ScheduledAction$Remover2;-><init>(Lcom/tds/common/reactor/schedulers/ScheduledAction;Lcom/tds/common/reactor/util/SubscriptionList;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 126
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 4

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V
    :try_end_c
    .catch Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_c} :catch_1c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 63
    :goto_c
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->unsubscribe()V

    .line 64
    goto :goto_28

    .line 60
    :catchall_10
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_c

    .line 58
    :catch_1c
    move-exception v0

    .line 59
    .local v0, "e":Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_29

    .end local v0    # "e":Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;
    goto :goto_c

    .line 65
    :goto_28
    return-void

    .line 63
    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->unsubscribe()V

    .line 64
    throw v0
.end method

.method signalError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "ie"    # Ljava/lang/Throwable;

    .line 68
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 70
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public unsubscribe()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 81
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/ScheduledAction;->cancel:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribe()V

    .line 83
    :cond_d
    return-void
.end method
