.class public final Lrx/internal/operators/OnSubscribeUsing;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dispose:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final disposeEagerly:Z

.field private final observableFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final resourceFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TResource;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .registers 5
    .param p4, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p3, "dispose":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    .line 43
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    .line 44
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    .line 45
    iput-boolean p4, p0, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerly:Z

    .line 46
    return-void
.end method

.method private dispose(Lrx/functions/Action0;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "disposeOnceOnly"    # Lrx/functions/Action0;

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    :try_start_0
    invoke-interface {p1}, Lrx/functions/Action0;->call()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_4
    return-object v0

    .line 116
    :catch_5
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeUsing;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    invoke-interface {v6}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "resource":Ljava/lang/Object;, "TResource;"
    new-instance v1, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->dispose:Lrx/functions/Action1;

    invoke-direct {v1, v6, v4}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    .line 59
    .local v1, "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_47

    .line 64
    :try_start_10
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeUsing;->observableFactory:Lrx/functions/Func1;

    invoke-interface {v6, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Observable;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_28

    .line 82
    .local v5, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :try_start_18
    iget-boolean v6, p0, Lrx/internal/operators/OnSubscribeUsing;->disposeEagerly:Z

    if-eqz v6, :cond_50

    .line 83
    invoke-virtual {v5, v1}, Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_47

    move-result-object v3

    .line 94
    .local v3, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_20
    :try_start_20
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v6

    invoke-virtual {v3, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_27} :catch_55

    .line 110
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_27
    return-void

    .line 67
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_28
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_29
    invoke-direct {p0, v1}, Lrx/internal/operators/OnSubscribeUsing;->dispose(Lrx/functions/Action0;)Ljava/lang/Throwable;

    move-result-object v0

    .line 69
    .local v0, "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    if-eqz v0, :cond_4c

    .line 72
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_46} :catch_47

    goto :goto_27

    .line 106
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_47
    move-exception v2

    .line 108
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_27

    .line 75
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :cond_4c
    :try_start_4c
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 87
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_50
    invoke-virtual {v5, v1}, Lrx/Observable;->doAfterTerminate(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v3

    .restart local v3    # "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    goto :goto_20

    .line 95
    :catch_55
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/internal/operators/OnSubscribeUsing;->dispose(Lrx/functions/Action0;)Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 98
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 99
    if-eqz v0, :cond_74

    .line 100
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 103
    :cond_74
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_77} :catch_47

    goto :goto_27
.end method
