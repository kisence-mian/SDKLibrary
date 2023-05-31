.class Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;

.field private final delayTime:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 291
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 292
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Lrx/functions/Action0;

    .line 293
    iput-wide p2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    .line 294
    iput-object p4, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    .line 295
    return-void
.end method


# virtual methods
.method protected callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 6
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 299
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->action:Lrx/functions/Action0;

    iget-wide v2, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->delayTime:J

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v2, v3, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
