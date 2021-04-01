.class Lrx/internal/schedulers/SchedulerWhen$1$1;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen$1;->call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/schedulers/SchedulerWhen$1;

.field final synthetic val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen$1;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .registers 3

    .prologue
    .line 146
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->this$1:Lrx/internal/schedulers/SchedulerWhen$1;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$1$1;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "actionCompletable"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 149
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 150
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$1$1;->this$1:Lrx/internal/schedulers/SchedulerWhen$1;

    iget-object v1, v1, Lrx/internal/schedulers/SchedulerWhen$1;->val$actualWorker:Lrx/Scheduler$Worker;

    # invokes: Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lrx/Scheduler$Worker;)V
    invoke-static {v0, v1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lrx/Scheduler$Worker;)V

    .line 151
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 152
    return-void
.end method
