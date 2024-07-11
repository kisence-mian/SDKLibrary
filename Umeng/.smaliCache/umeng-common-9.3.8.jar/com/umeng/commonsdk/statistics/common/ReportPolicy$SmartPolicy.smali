.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPolicy"
.end annotation


# instance fields
.field private final ReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .registers 4

    .line 286
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 283
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;->ReportInterval:J

    .line 287
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 288
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .registers 6

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_16

    .line 294
    const/4 p1, 0x1

    return p1

    .line 297
    :cond_16
    const/4 p1, 0x0

    return p1
.end method
