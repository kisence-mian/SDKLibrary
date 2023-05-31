.class final Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 252
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 254
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    .line 257
    iget-wide v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .registers 3
    .param p1, "expirationTime"    # J

    .line 261
    iput-wide p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 262
    return-void
.end method
