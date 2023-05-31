.class Lrx/Completable$17$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$17$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$17$1;

.field final synthetic val$d:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/Completable$17$1;Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 1380
    iput-object p1, p0, Lrx/Completable$17$1$1;->this$2:Lrx/Completable$17$1;

    iput-object p2, p0, Lrx/Completable$17$1$1;->val$d:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1384
    :try_start_0
    iget-object v1, p0, Lrx/Completable$17$1$1;->this$2:Lrx/Completable$17$1;

    iget-object v1, v1, Lrx/Completable$17$1;->this$1:Lrx/Completable$17;

    iget-object v1, v1, Lrx/Completable$17;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_f

    .line 1388
    :goto_9
    iget-object v1, p0, Lrx/Completable$17$1$1;->val$d:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 1389
    return-void

    .line 1385
    :catch_f
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_9
.end method
