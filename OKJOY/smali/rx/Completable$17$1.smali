.class Lrx/Completable$17$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$17;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$17;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$17;Lrx/Completable$CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 1337
    iput-object p1, p0, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iput-object p2, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1342
    :try_start_0
    iget-object v1, p0, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iget-object v1, v1, Lrx/Completable$17;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_14

    .line 1348
    iget-object v1, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 1351
    :try_start_c
    iget-object v1, p0, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iget-object v1, v1, Lrx/Completable$17;->val$onAfterComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_1b

    .line 1355
    :goto_13
    return-void

    .line 1343
    :catch_14
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 1352
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v0

    .line 1353
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1360
    :try_start_0
    iget-object v2, p0, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iget-object v2, v2, Lrx/Completable$17;->val$onError:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_d

    .line 1365
    :goto_7
    iget-object v2, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, p1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1366
    return-void

    .line 1361
    :catch_d
    move-exception v1

    .line 1362
    .local v1, "ex":Ljava/lang/Throwable;
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

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_7
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 5
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1372
    :try_start_0
    iget-object v1, p0, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iget-object v1, v1, Lrx/Completable$17;->val$onSubscribe:Lrx/functions/Action1;

    invoke-interface {v1, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_16

    .line 1380
    iget-object v1, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    new-instance v2, Lrx/Completable$17$1$1;

    invoke-direct {v2, p0, p1}, Lrx/Completable$17$1$1;-><init>(Lrx/Completable$17$1;Lrx/Subscription;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1391
    :goto_15
    return-void

    .line 1373
    :catch_16
    move-exception v0

    .line 1374
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 1375
    iget-object v1, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1376
    iget-object v1, p0, Lrx/Completable$17$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
