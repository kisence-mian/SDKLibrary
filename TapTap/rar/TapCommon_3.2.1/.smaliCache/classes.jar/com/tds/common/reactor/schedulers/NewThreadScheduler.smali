.class public final Lcom/tds/common/reactor/schedulers/NewThreadScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "NewThreadScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
