.class Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

.field final synthetic val$a:Lrx/functions/Action0;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/functions/Action0;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 116
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 118
    return-void

    .line 116
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method
