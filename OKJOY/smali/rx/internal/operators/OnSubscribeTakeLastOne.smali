.class public final Lrx/internal/operators/OnSubscribeTakeLastOne;
.super Ljava/lang/Object;
.source "OnSubscribeTakeLastOne.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTakeLastOne;->source:Lrx/Observable;

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeTakeLastOne;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeTakeLastOne;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;-><init>(Lrx/Subscriber;)V

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTakeLastOne;->source:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber;->subscribeTo(Lrx/Observable;)V

    .line 33
    return-void
.end method
