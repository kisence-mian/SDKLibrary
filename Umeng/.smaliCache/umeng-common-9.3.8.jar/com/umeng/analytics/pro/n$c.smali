.class public Lcom/umeng/analytics/pro/n$c;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1640
    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    .line 1641
    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    .line 1643
    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->d:I

    .line 1644
    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    .line 1646
    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 1649
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 1650
    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 6

    .line 1801
    nop

    .line 1803
    packed-switch p1, :pswitch_data_a4

    .line 1841
    :pswitch_4
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_9d

    goto/16 :goto_a2

    .line 1817
    :pswitch_c
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_1c

    .line 1818
    nop

    .line 1819
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_a2

    .line 1821
    :cond_1c
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;-><init>()V

    .line 1822
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    .line 1824
    goto/16 :goto_a2

    .line 1837
    :pswitch_2a
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p2, :cond_31

    goto :goto_3e

    :cond_31
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    .line 1838
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    .line 1839
    :goto_3e
    goto :goto_a2

    .line 1808
    :pswitch_3f
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_4e

    .line 1809
    nop

    .line 1810
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    goto :goto_a2

    .line 1812
    :cond_4e
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    .line 1814
    goto :goto_a2

    .line 1833
    :pswitch_5d
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p2, :cond_64

    goto :goto_6d

    :cond_64
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    .line 1834
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    .line 1835
    :goto_6d
    goto :goto_a2

    .line 1826
    :pswitch_6e
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p2, :cond_75

    goto :goto_82

    :cond_75
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    .line 1827
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    .line 1828
    :goto_82
    goto :goto_a2

    .line 1805
    :pswitch_83
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_8a

    goto :goto_8f

    :cond_8a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    .line 1806
    :goto_8f
    goto :goto_a2

    .line 1830
    :pswitch_90
    iget-object p1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p2, :cond_97

    goto :goto_9c

    :cond_97
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    .line 1831
    :goto_9c
    goto :goto_a2

    .line 1841
    :cond_9d
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    .line 1844
    :goto_a2
    return-object p1

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_90
        :pswitch_83
        :pswitch_4
        :pswitch_4
        :pswitch_6e
        :pswitch_5d
        :pswitch_3f
        :pswitch_4
        :pswitch_2a
        :pswitch_4
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a(I)I
    .registers 5

    .line 1690
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1691
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_24

    const v1, 0x15180

    if-le v0, v1, :cond_21

    goto :goto_24

    .line 1695
    :cond_21
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 1692
    :cond_24
    :goto_24
    return p1
.end method

.method public a()V
    .registers 3

    .line 1654
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/n$c;->a(II)[I

    move-result-object v0

    .line 1656
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    .line 1657
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/n$c;->c:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    .line 1659
    goto :goto_11

    .line 1658
    :catchall_10
    move-exception v0

    .line 1660
    :goto_11
    return-void
.end method

.method public a(II)[I
    .registers 10

    .line 1663
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "report_policy"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1664
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v1

    const-string v3, "report_interval"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1665
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_6c

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_6c

    .line 1669
    :cond_33
    const/4 v6, 0x6

    if-ne v6, v0, :cond_4c

    .line 1670
    const/16 p1, 0x5a

    if-eq v1, v2, :cond_41

    if-lt v1, p1, :cond_41

    const p2, 0x15180

    if-le v1, p2, :cond_43

    .line 1671
    :cond_41
    const/16 v1, 0x5a

    .line 1674
    :cond_43
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    .line 1677
    :cond_4c
    const/16 v6, 0xb

    if-ne v6, v0, :cond_65

    .line 1678
    const/16 p1, 0xf

    if-eq v1, v2, :cond_5a

    if-lt v1, p1, :cond_5a

    const/16 p2, 0xe10

    if-le v1, p2, :cond_5c

    .line 1679
    :cond_5a
    const/16 v1, 0xf

    .line 1682
    :cond_5c
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    .line 1685
    :cond_65
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0

    .line 1666
    :cond_6c
    :goto_6c
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0
.end method

.method protected b()V
    .registers 11

    .line 1702
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    .line 1703
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_38

    .line 1705
    iget-object v1, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v6, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v6, :cond_20

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 1706
    :goto_21
    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_34

    :cond_26
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_34
    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1708
    goto/16 :goto_e5

    .line 1709
    :cond_38
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "integrated_test"

    const-string v6, "-1"

    invoke-static {v0, v1, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1710
    if-ne v0, v5, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    .line 1711
    :goto_51
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1712
    if-eqz v0, :cond_64

    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v1, :cond_64

    .line 1713
    sget-object v1, Lcom/umeng/analytics/pro/i;->K:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-static {v1, v2, v7, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1717
    :cond_64
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v1, :cond_7b

    if-eqz v0, :cond_7b

    .line 1721
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_e5

    .line 1722
    :cond_7b
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1726
    nop

    .line 1727
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_c5

    .line 1729
    invoke-static {}, Lcom/umeng/analytics/pro/n;->g()Landroid/content/Context;

    move-result-object v0

    const-string v7, "test_report_interval"

    invoke-static {v0, v7, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1730
    if-eq v0, v1, :cond_b2

    const/4 v0, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x0

    .line 1731
    :goto_b3
    if-eqz v0, :cond_bd

    .line 1732
    const v0, 0x15f90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/n$c;->a(I)I

    move-result v0

    goto :goto_c6

    .line 1733
    :cond_bd
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    if-lez v0, :cond_c2

    .line 1734
    goto :goto_c6

    .line 1736
    :cond_c2
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    goto :goto_c6

    .line 1727
    :cond_c5
    const/4 v0, 0x0

    .line 1739
    :goto_c6
    iget-object v1, p0, Lcom/umeng/analytics/pro/n$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/n$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1740
    goto :goto_e5

    .line 1741
    :cond_d3
    iget v0, p0, Lcom/umeng/analytics/pro/n$c;->d:I

    .line 1742
    iget v6, p0, Lcom/umeng/analytics/pro/n$c;->e:I

    .line 1743
    iget v7, p0, Lcom/umeng/analytics/pro/n$c;->b:I

    if-eq v7, v1, :cond_df

    .line 1744
    nop

    .line 1745
    iget v6, p0, Lcom/umeng/analytics/pro/n$c;->c:I

    move v0, v7

    .line 1747
    :cond_df
    invoke-direct {p0, v0, v6}, Lcom/umeng/analytics/pro/n$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1752
    :goto_e5
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1754
    :try_start_eb
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_147

    const-string v6, ""

    if-eqz v1, :cond_f9

    .line 1756
    :try_start_f3
    sget-object v0, Lcom/umeng/analytics/pro/i;->I:Ljava/lang/String;

    invoke-static {v0, v2, v6, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_146

    .line 1757
    :cond_f9
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_147

    const-string v7, "@"

    const-wide/16 v8, 0x3e8

    if-eqz v1, :cond_11a

    .line 1759
    :try_start_101
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v0

    .line 1760
    div-long/2addr v0, v8

    .line 1761
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1762
    new-array v1, v5, [Ljava/lang/String;

    aput-object v7, v1, v4

    .line 1763
    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1764
    sget-object v0, Lcom/umeng/analytics/pro/i;->J:Ljava/lang/String;

    invoke-static {v0, v2, v6, v1, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1765
    goto :goto_146

    :cond_11a
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v1, :cond_124

    .line 1767
    sget-object v0, Lcom/umeng/analytics/pro/i;->L:Ljava/lang/String;

    invoke-static {v0, v2, v6, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_146

    .line 1768
    :cond_124
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_143

    .line 1770
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->getReportInterval()J

    move-result-wide v0

    .line 1771
    div-long/2addr v0, v8

    .line 1772
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1773
    new-array v1, v5, [Ljava/lang/String;

    aput-object v7, v1, v4

    .line 1774
    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1775
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/i;->M:Ljava/lang/String;

    invoke-static {v0, v2, v6, v1, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_145

    .line 1776
    :cond_143
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
    :try_end_145
    .catchall {:try_start_101 .. :try_end_145} :catchall_147

    :goto_145
    nop

    .line 1782
    :goto_146
    goto :goto_148

    .line 1780
    :catchall_147
    move-exception v0

    .line 1785
    :cond_148
    :goto_148
    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .registers 2

    .line 1788
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/n$c;->b()V

    .line 1789
    iget-object v0, p0, Lcom/umeng/analytics/pro/n$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
