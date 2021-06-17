.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportAtLaunch"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .registers 2

    .line 139
    return p1
.end method
