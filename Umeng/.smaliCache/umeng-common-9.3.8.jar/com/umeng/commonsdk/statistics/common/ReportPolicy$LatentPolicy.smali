.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatentPolicy"
.end annotation


# instance fields
.field private latency:J

.field private start:J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 262
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    .line 263
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    .line 265
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 6

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public shouldSendMessage(Z)Z
    .registers 6

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->start:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;->latency:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_f

    .line 270
    const/4 p1, 0x1

    return p1

    .line 273
    :cond_f
    const/4 p1, 0x0

    return p1
.end method
