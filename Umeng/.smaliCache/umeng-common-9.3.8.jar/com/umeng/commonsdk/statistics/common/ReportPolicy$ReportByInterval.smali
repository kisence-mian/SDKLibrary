.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportByInterval"
.end annotation


# static fields
.field private static MAX_REPORT_INTERVAL:J

.field private static MIN_REPORT_INTERVAL:J


# instance fields
.field private mReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 145
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    .line 146
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V
    .registers 4

    .line 151
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 153
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    .line 154
    return-void
.end method

.method public static isValidValue(I)Z
    .registers 5

    .line 181
    int-to-long v0, p0

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_9

    .line 182
    const/4 p0, 0x0

    return p0

    .line 184
    :cond_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getReportInterval()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-wide v0
.end method

.method public setReportInterval(J)V
    .registers 8

    .line 169
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_f

    .line 170
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_11

    .line 172
    :cond_f
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 174
    :goto_11
    return-void
.end method

.method public shouldSendMessage(Z)Z
    .registers 7

    .line 158
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 159
    return v0

    .line 162
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_18

    .line 163
    return v0

    .line 165
    :cond_18
    const/4 p1, 0x0

    return p1
.end method
