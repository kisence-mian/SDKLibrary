.class final Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeOnAssembly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeOnAssembly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnAssemblySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/String;)V
    .registers 3
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 107
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lrx/Subscriber;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->stacktrace:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 119
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
