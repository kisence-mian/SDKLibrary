.class public final Lrx/internal/operators/SingleDoAfterTerminate;
.super Ljava/lang/Object;
.source "SingleDoAfterTerminate.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final source:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/functions/Action0;)V
    .registers 3
    .param p2, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/SingleDoAfterTerminate;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    .local p1, "source":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/SingleDoAfterTerminate;->source:Lrx/Single;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/SingleDoAfterTerminate;->action:Lrx/functions/Action0;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/SingleDoAfterTerminate;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleDoAfterTerminate;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/SingleDoAfterTerminate;, "Lrx/internal/operators/SingleDoAfterTerminate<TT;>;"
    .local p1, "t":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber;

    iget-object v1, p0, Lrx/internal/operators/SingleDoAfterTerminate;->action:Lrx/functions/Action0;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber;-><init>(Lrx/SingleSubscriber;Lrx/functions/Action0;)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 42
    iget-object v1, p0, Lrx/internal/operators/SingleDoAfterTerminate;->source:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 43
    return-void
.end method
