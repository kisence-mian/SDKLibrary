.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.super Ljava/lang/Object;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;,
        Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    }
.end annotation


# static fields
.field public static final BATCH_AT_LAUNCH:I = 0x1

.field static final BATCH_AT_TERMINATE:I = 0x2

.field public static final BATCH_BY_INTERVAL:I = 0x6

.field public static final DAILY:I = 0x4

.field static final IMMEDIATE:I = 0x3

.field public static final QUASI_REALTIME_POLICY:I = 0xb

.field public static final REALTIME:I = 0x0

.field public static final SMART_POLICY:I = 0x8

.field public static final WIFIONLY:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method

.method public static isValid(I)Z
    .registers 1

    .line 56
    nop

    .line 57
    packed-switch p0, :pswitch_data_a

    .line 70
    :pswitch_4
    const/4 p0, 0x0

    goto :goto_8

    .line 67
    :pswitch_6
    const/4 p0, 0x1

    .line 68
    nop

    .line 73
    :goto_8
    return p0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
