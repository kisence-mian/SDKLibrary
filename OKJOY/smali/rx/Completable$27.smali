.class Lrx/Completable$27;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 1965
    iput-object p1, p0, Lrx/Completable$27;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p4, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method callOnError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1994
    :try_start_0
    iget-object v2, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b
    .catchall {:try_start_0 .. :try_end_5} :catchall_2b

    .line 2000
    iget-object v2, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 2002
    :goto_a
    return-void

    .line 1995
    :catch_b
    move-exception v1

    .line 1996
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_c
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2b

    .line 1997
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1e
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1998
    invoke-static {v0}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_32

    .line 2000
    iget-object v2, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    move-object p1, v0

    .line 2001
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_a

    .line 2000
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_2b
    move-exception v2

    :goto_2c
    iget-object v3, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v2

    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :catchall_32
    move-exception v2

    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_2c
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 1969
    iget-boolean v1, p0, Lrx/Completable$27;->done:Z

    if-nez v1, :cond_11

    .line 1970
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/Completable$27;->done:Z

    .line 1972
    :try_start_7
    iget-object v1, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12

    .line 1977
    iget-object v1, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1979
    :cond_11
    :goto_11
    return-void

    .line 1973
    :catch_12
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/Completable$27;->callOnError(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1983
    iget-boolean v0, p0, Lrx/Completable$27;->done:Z

    if-nez v0, :cond_b

    .line 1984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/Completable$27;->done:Z

    .line 1985
    invoke-virtual {p0, p1}, Lrx/Completable$27;->callOnError(Ljava/lang/Throwable;)V

    .line 1990
    :goto_a
    return-void

    .line 1987
    :cond_b
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1988
    invoke-static {p1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2006
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 2007
    return-void
.end method
