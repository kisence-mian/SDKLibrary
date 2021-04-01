.class abstract Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/Subscription;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 216
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$100()Lrx/Subscription;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lrx/Scheduler$Worker;)V
    .registers 2
    .param p0, "x0"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    .param p1, "x1"    # Lrx/Scheduler$Worker;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lrx/Scheduler$Worker;)V

    return-void
.end method

.method private final call(Lrx/Scheduler$Worker;)V
    .registers 5
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 220
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 222
    .local v1, "oldState":Lrx/Subscription;
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$200()Lrx/Subscription;

    move-result-object v2

    if-ne v1, v2, :cond_d

    .line 242
    :cond_c
    :goto_c
    return-void

    .line 226
    :cond_d
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$100()Lrx/Subscription;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 233
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    .line 235
    .local v0, "newState":Lrx/Subscription;
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$100()Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 240
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    goto :goto_c
.end method


# virtual methods
.method protected abstract callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 255
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$200()Lrx/Subscription;

    move-result-object v0

    .line 257
    .local v0, "newState":Lrx/Subscription;
    :cond_4
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 258
    .local v1, "oldState":Lrx/Subscription;
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$200()Lrx/Subscription;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 268
    :cond_10
    :goto_10
    return-void

    .line 262
    :cond_11
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    # getter for: Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;
    invoke-static {}, Lrx/internal/schedulers/SchedulerWhen;->access$100()Lrx/Subscription;

    move-result-object v2

    if-eq v1, v2, :cond_10

    .line 266
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_10
.end method
