.class Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 2
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 275
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 276
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lrx/functions/Action0;

    .line 277
    return-void
.end method


# virtual methods
.method protected callActual(Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 3
    .param p1, "actualWorker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 281
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lrx/functions/Action0;

    invoke-virtual {p1, v0}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
