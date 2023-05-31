.class public final Lrx/internal/operators/OnSubscribeReduceSeed;
.super Ljava/lang/Object;
.source "OnSubscribeReduceSeed.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->source:Lrx/Observable;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->initialValue:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->reducer:Lrx/functions/Func2;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeReduceSeed;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->initialValue:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->reducer:Lrx/functions/Func2;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func2;)V

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->source:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->subscribeTo(Lrx/Observable;)V

    .line 41
    return-void
.end method
