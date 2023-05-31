.class Lrx/Completable$26;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action0;)Lrx/Subscription;
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


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .registers 4

    .prologue
    .line 1919
    iput-object p1, p0, Lrx/Completable$26;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$26;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 1923
    iget-boolean v1, p0, Lrx/Completable$26;->done:Z

    if-nez v1, :cond_11

    .line 1924
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/Completable$26;->done:Z

    .line 1926
    :try_start_7
    iget-object v1, p0, Lrx/Completable$26;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    .line 1931
    iget-object v1, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1934
    :cond_11
    :goto_11
    return-void

    .line 1927
    :catch_12
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_13
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1929
    invoke-static {v0}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 1931
    iget-object v1, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    goto :goto_11

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1938
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1939
    iget-object v0, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1940
    invoke-static {p1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V

    .line 1941
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1945
    iget-object v0, p0, Lrx/Completable$26;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1946
    return-void
.end method
