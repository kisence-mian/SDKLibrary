.class final Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeOnAssembly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;
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
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/String;)V
    .registers 3
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 92
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 93
    iput-object p2, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->stacktrace:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 98
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 99
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 103
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    new-instance v0, Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 104
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 110
    return-void
.end method
