.class Lrx/Completable$25;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .registers 3

    .prologue
    .line 1886
    iput-object p1, p0, Lrx/Completable$25;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$25;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1889
    iget-object v0, p0, Lrx/Completable$25;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1890
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1894
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1895
    iget-object v0, p0, Lrx/Completable$25;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1896
    invoke-static {p1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V

    .line 1897
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1901
    iget-object v0, p0, Lrx/Completable$25;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1902
    return-void
.end method
