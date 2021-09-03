.class Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;
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

.field final synthetic val$els:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;->this$0:Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;->val$els:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 3
    .param p1, "a"    # Lcom/tds/common/reactor/functions/Action0;

    .line 108
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;->val$els:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->scheduleDirect(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;, "Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;"
    check-cast p1, Lcom/tds/common/reactor/functions/Action0;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/util/ScalarSynchronousObservable$1;->call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object p1

    return-object p1
.end method
