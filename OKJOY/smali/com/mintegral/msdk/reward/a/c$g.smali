.class final Lcom/mintegral/msdk/reward/a/c$g;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private b:Lcom/mintegral/msdk/reward/a/c;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mintegral/msdk/videocommon/e/c;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;ILcom/mintegral/msdk/videocommon/e/c;Z)V
    .registers 9

    .prologue
    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->g:Z

    .line 1530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->c:J

    .line 1531
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    .line 1532
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1533
    iput p4, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    .line 1534
    iput-object p5, p0, Lcom/mintegral/msdk/reward/a/c$g;->f:Lcom/mintegral/msdk/videocommon/e/c;

    .line 1535
    if-eqz p2, :cond_1b

    .line 1536
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    .line 1538
    :cond_1b
    iput-boolean p6, p0, Lcom/mintegral/msdk/reward/a/c$g;->g:Z

    .line 1539
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/16 v11, 0x35b

    const/16 v10, 0x1f1

    .line 1546
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mintegral/msdk/reward/a/c$g;->c:J

    sub-long v4, v2, v4

    .line 1548
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v9

    .line 1550
    iget v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-ne v1, v10, :cond_e1

    .line 1551
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->g:Z

    if-eqz v1, :cond_5f

    .line 1552
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "1"

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1555
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_c6

    .line 1557
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 1586
    :cond_5f
    :goto_5f
    iget v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-ne v1, v10, :cond_140

    .line 1587
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 1592
    :goto_70
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/i;->a()Lcom/mintegral/msdk/videocommon/download/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/download/i;->b(Ljava/lang/String;)V

    .line 1593
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardZipDownloadListener ZIP SUCCESS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_c5

    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-eq v0, v11, :cond_c5

    .line 1596
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_96} :catch_d6

    .line 1597
    :try_start_96
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "adapter 1286"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1599
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 1600
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1601
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    .line 1605
    :cond_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_96 .. :try_end_c5} :catchall_145

    .line 1611
    :cond_c5
    :goto_c5
    return-void

    .line 1558
    :cond_c6
    :try_start_c6
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_5f

    .line 1559
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_d5} :catch_d6

    goto :goto_5f

    .line 1607
    :catch_d6
    move-exception v0

    .line 1608
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5

    .line 1562
    :cond_e1
    :try_start_e1
    iget v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-ne v1, v11, :cond_139

    .line 1563
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 1564
    const-string v1, "2000045"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 1565
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v1, :cond_110

    .line 1567
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c$g;->f:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-static {v1, v2, p1, v3, v4}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 1568
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v1

    .line 1569
    if-eqz v1, :cond_110

    .line 1570
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    .line 1571
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 1574
    :cond_110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 1575
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_12a

    .line 1576
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1579
    :cond_12a
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/q;->i(Ljava/lang/String;)V

    .line 1580
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 1581
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 1583
    :cond_139
    iget v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    const/16 v2, 0x139

    if-ne v1, v2, :cond_5f

    goto :goto_c5

    .line 1589
    :cond_140
    invoke-virtual {v9, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_143} :catch_d6

    goto/16 :goto_70

    .line 1605
    :catchall_145
    move-exception v0

    :try_start_146
    monitor-exit v1
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    :try_start_147
    throw v0
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_147 .. :try_end_148} :catch_d6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/16 v11, 0x1f1

    .line 1615
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardZipDownloadListener ZIP failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/reward/a/c$g;->c:J

    sub-long v4, v0, v2

    .line 1619
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v10

    .line 1621
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-ne v0, v11, :cond_dd

    .line 1622
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->g:Z

    if-eqz v0, :cond_130

    .line 1623
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    const-string v7, "zip download failed"

    const-string v8, "1"

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1626
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1627
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_b3

    .line 1628
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 1654
    :cond_71
    :goto_71
    iget v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    if-ne v1, v11, :cond_133

    .line 1655
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 1659
    :goto_82
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_8f

    .line 1661
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/a/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1663
    :cond_8f
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_ac

    .line 1664
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardZipDownloadListener ZIP failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_ac} :catch_c3

    .line 1677
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_b2

    .line 1678
    iput-object v9, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    .line 1680
    :cond_b2
    return-void

    .line 1629
    :cond_b3
    :try_start_b3
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_71

    .line 1630
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c2} :catch_c3

    goto :goto_71

    .line 1667
    :catch_c3
    move-exception v0

    .line 1669
    :try_start_c4
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v1, :cond_d3

    .line 1670
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;

    move-result-object v1

    const-string v2, "clear error info failed"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_d3} :catch_138

    .line 1675
    :cond_d3
    :goto_d3
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ac

    .line 1633
    :cond_dd
    :try_start_dd
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    const/16 v1, 0x35b

    if-ne v0, v1, :cond_12a

    .line 1634
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 1635
    const-string v1, "2000045"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 1636
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v1, :cond_103

    .line 1637
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->b:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v1

    .line 1638
    if-eqz v1, :cond_103

    .line 1639
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    .line 1640
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 1643
    :cond_103
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 1644
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_11d

    .line 1645
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1646
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1648
    :cond_11d
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/entity/q;->i(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1651
    :cond_12a
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$g;->e:I

    const/16 v1, 0x139

    if-eq v0, v1, :cond_b2

    :cond_130
    move-object v0, v9

    goto/16 :goto_71

    .line 1657
    :cond_133
    invoke-virtual {v10, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_136} :catch_c3

    goto/16 :goto_82

    .line 1672
    :catch_138
    move-exception v1

    .line 1673
    const-string v2, "RewardMVVideoAdapter"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d3
.end method
