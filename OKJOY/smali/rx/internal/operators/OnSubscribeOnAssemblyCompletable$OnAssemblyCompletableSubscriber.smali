.class final Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnAssemblyCompletableSubscriber"
.end annotation


# instance fields
.field final actual:Lrx/Completable$CompletableSubscriber;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableSubscriber;Ljava/lang/String;)V
    .registers 3
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;
    .param p2, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 59
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->stacktrace:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 64
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 65
    return-void
.end method
