.class public abstract Lrx/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Scheduler$Worker;
    }
.end annotation


# static fields
.field static final CLOCK_DRIFT_TOLERANCE_NANOS:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public abstract createWorker()Lrx/Scheduler$Worker;
.end method

.method public now()J
    .registers 3

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public when(Lrx/functions/Func1;)Lrx/Scheduler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lrx/Scheduler;",
            ":",
            "Lrx/Subscription;",
            ">(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;)TS;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 264
    .local p1, "combine":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen;

    invoke-direct {v0, p1, p0}, Lrx/internal/schedulers/SchedulerWhen;-><init>(Lrx/functions/Func1;Lrx/Scheduler;)V

    return-object v0
.end method
