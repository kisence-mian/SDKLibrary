.class public final Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
.super Lcom/tds/common/reactor/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;,
        Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;,
        Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Observable<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final STRONG_MODE:Z


# instance fields
.field final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    .line 55
    .end local v0    # "wp":Ljava/lang/String;
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$JustOnSubscribe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/reactor/Observable;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    .line 83
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable<",
            "TT;>;"
        }
    .end annotation

    .line 78
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static createProducer(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)Lcom/tds/common/reactor/Producer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;TT;)",
            "Lcom/tds/common/reactor/Producer;"
        }
    .end annotation

    .line 65
    .local p0, "s":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    if-eqz v0, :cond_a

    .line 66
    new-instance v0, Lcom/tds/common/reactor/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/producers/SingleProducer;-><init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V

    return-object v0

    .line 68
    :cond_a
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$WeakSingleProducer;-><init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+",
            "Lcom/tds/common/reactor/Observable<",
            "+TR;>;>;)",
            "Lcom/tds/common/reactor/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "func":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+Lcom/tds/common/reactor/Observable<+TR;>;>;"
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$3;-><init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/functions/Func1;)V

    invoke-static {v0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;
    .registers 5
    .param p1, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ")",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v0, p1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;

    if-eqz v0, :cond_e

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;

    .line 105
    .local v0, "els":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;
    new-instance v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v1, p0, v0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;-><init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;)V

    move-object v0, v1

    .line 111
    .local v0, "onSchedule":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;>;"
    goto :goto_13

    .line 112
    .end local v0    # "onSchedule":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;>;"
    :cond_e
    new-instance v0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;-><init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/schedulers/Scheduler;)V

    .line 131
    .restart local v0    # "onSchedule":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;>;"
    :goto_13
    new-instance v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;-><init>(Ljava/lang/Object;Lcom/tds/common/reactor/functions/Func1;)V

    invoke-static {v1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->unsafeCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    return-object v1
.end method
