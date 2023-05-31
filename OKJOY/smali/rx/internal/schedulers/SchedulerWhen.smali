.class public Lrx/internal/schedulers/SchedulerWhen;
.super Lrx/Scheduler;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field private static final SUBSCRIBED:Lrx/Subscription;

.field private static final UNSUBSCRIBED:Lrx/Subscription;


# instance fields
.field private final actualScheduler:Lrx/Scheduler;

.field private final subscription:Lrx/Subscription;

.field private final workerObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$3;

    invoke-direct {v0}, Lrx/internal/schedulers/SchedulerWhen$3;-><init>()V

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    .line 211
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/Scheduler;)V
    .registers 5
    .param p2, "actualScheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "combine":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 116
    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    .line 118
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 119
    .local v0, "workerSubject":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lrx/Observable<Lrx/Completable;>;>;"
    new-instance v1, Lrx/observers/SerializedObserver;

    invoke-direct {v1, v0}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v1, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    .line 122
    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v1

    invoke-interface {p1, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable;

    invoke-virtual {v1}, Lrx/Completable;->subscribe()Lrx/Subscription;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    .line 123
    return-void
.end method

.method static synthetic access$100()Lrx/Subscription;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    return-object v0
.end method

.method static synthetic access$200()Lrx/Subscription;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 7

    .prologue
    .line 137
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    invoke-virtual {v5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v3

    .line 140
    .local v3, "actualWorker":Lrx/Scheduler$Worker;
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v1

    .line 141
    .local v1, "actionSubject":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, v1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    .line 143
    .local v0, "actionObserver":Lrx/Observer;, "Lrx/Observer<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v5, Lrx/internal/schedulers/SchedulerWhen$1;

    invoke-direct {v5, p0, v3}, Lrx/internal/schedulers/SchedulerWhen$1;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;)V

    invoke-virtual {v1, v5}, Lrx/internal/operators/BufferUntilSubscriber;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 158
    .local v2, "actions":Lrx/Observable;, "Lrx/Observable<Lrx/Completable;>;"
    new-instance v4, Lrx/internal/schedulers/SchedulerWhen$2;

    invoke-direct {v4, p0, v3, v0}, Lrx/internal/schedulers/SchedulerWhen$2;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;Lrx/Observer;)V

    .line 194
    .local v4, "worker":Lrx/Scheduler$Worker;
    iget-object v5, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    invoke-interface {v5, v2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 197
    return-object v4
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 128
    return-void
.end method
