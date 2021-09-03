.class Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;->call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;

.field final synthetic val$a:Lcom/tds/common/reactor/functions/Action0;

.field final synthetic val$w:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;)V
    .registers 4
    .param p1, "this$1"    # Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;

    .line 116
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->this$1:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lcom/tds/common/reactor/functions/Action0;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 120
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->val$a:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 122
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;->val$w:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 123
    throw v0
.end method
