.class public final Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Completable$CompletableOnSubscribe;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lrx/Completable$CompletableOnSubscribe;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Completable$CompletableOnSubscribe;)V
    .registers 3
    .param p1, "source"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->source:Lrx/Completable$CompletableOnSubscribe;

    .line 43
    invoke-static {}, Lrx/internal/operators/OnSubscribeOnAssembly;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->stacktrace:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 5
    .param p1, "t"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->source:Lrx/Completable$CompletableOnSubscribe;

    new-instance v1, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeOnAssemblyCompletable$OnAssemblyCompletableSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Completable$CompletableOnSubscribe;->call(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
