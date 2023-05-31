.class public abstract Lrx/plugins/RxJavaCompletableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaCompletableExecutionHook.java"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;
    .registers 2
    .param p1, "f"    # Lrx/Completable$CompletableOnSubscribe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-object p1
.end method

.method public onLift(Lrx/Completable$CompletableOperator;)Lrx/Completable$CompletableOperator;
    .registers 2
    .param p1, "lift"    # Lrx/Completable$CompletableOperator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    return-object p1
.end method

.method public onSubscribeStart(Lrx/Completable;Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;
    .registers 3
    .param p1, "completableInstance"    # Lrx/Completable;
    .param p2, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    return-object p2
.end method
