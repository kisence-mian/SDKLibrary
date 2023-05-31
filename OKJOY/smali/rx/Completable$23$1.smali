.class Lrx/Completable$23$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$23;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$23;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$23;Lrx/Completable$CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 1673
    iput-object p1, p0, Lrx/Completable$23$1;->this$1:Lrx/Completable$23;

    iput-object p2, p0, Lrx/Completable$23$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1677
    iget-object v0, p0, Lrx/Completable$23$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 1678
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1685
    :try_start_0
    iget-object v3, p0, Lrx/Completable$23$1;->this$1:Lrx/Completable$23;

    iget-object v3, v3, Lrx/Completable$23;->val$predicate:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_16

    move-result v0

    .line 1692
    .local v0, "b":Z
    :goto_e
    if-eqz v0, :cond_2f

    .line 1693
    iget-object v3, p0, Lrx/Completable$23$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v3}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 1697
    :goto_15
    return-void

    .line 1686
    .end local v0    # "b":Z
    :catch_16
    move-exception v2

    .line 1687
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1688
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1689
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "b":Z
    move-object p1, v1

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_e

    .line 1695
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lrx/Completable$23$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v3, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1701
    iget-object v0, p0, Lrx/Completable$23$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1702
    return-void
.end method
