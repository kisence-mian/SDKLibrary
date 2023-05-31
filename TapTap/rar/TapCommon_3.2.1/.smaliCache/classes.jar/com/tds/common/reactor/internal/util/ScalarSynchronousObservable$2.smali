.class Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Lcom/tds/common/reactor/functions/Action0;",
        "Lcom/tds/common/reactor/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

.field final synthetic val$scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/schedulers/Scheduler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    .line 112
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;->this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;->val$scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 4
    .param p1, "a"    # Lcom/tds/common/reactor/functions/Action0;

    .line 115
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;->val$scheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler;->createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    move-result-object v0

    .line 116
    .local v0, "w":Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    new-instance v1, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    .line 126
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 112
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;"
    check-cast p1, Lcom/tds/common/reactor/functions/Action0;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$2;->call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object p1

    return-object p1
.end method
