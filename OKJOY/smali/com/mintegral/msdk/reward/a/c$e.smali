.class final Lcom/mintegral/msdk/reward/a/c$e;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->e:Z

    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->c:J

    .line 1378
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$e;->d:Ljava/lang/String;

    .line 1379
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1380
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1381
    iput-boolean p4, p0, Lcom/mintegral/msdk/reward/a/c$e;->e:Z

    .line 1382
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1389
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H5SourceDownloadListener \u6e90\u7801\u4e0b\u8f7d\u6210\u529f cid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1392
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1393
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1394
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1396
    :cond_4b
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->e:Z

    if-eqz v0, :cond_ae

    .line 1397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->c:J

    sub-long v4, v0, v2

    .line 1399
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 1400
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/16 v2, 0x14

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/reward/a/c$e;->d:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "2"

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1403
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1404
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_af

    .line 1405
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 1409
    :cond_a1
    :goto_a1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 1415
    :cond_ae
    :goto_ae
    return-void

    .line 1406
    :cond_af
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_a1

    .line 1407
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_be} :catch_bf

    goto :goto_a1

    .line 1412
    :catch_bf
    move-exception v0

    .line 1413
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ae
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 1420
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "H5SourceDownloadListener \u6e90\u7801\u4e0b\u8f7d\u5931\u8d25 cid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_31

    .line 1423
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/a/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1425
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_3c

    .line 1426
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->a:Lcom/mintegral/msdk/reward/a/c;

    const-string v1, "H5 code resource download failed "

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_3c
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$e;->e:Z

    if-eqz v0, :cond_9f

    .line 1429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->c:J

    sub-long v4, v0, v2

    .line 1431
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 1432
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/16 v2, 0x15

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/reward/a/c$e;->d:Ljava/lang/String;

    const-string v7, "url download failed"

    const-string v8, "2"

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 1436
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_a0

    .line 1437
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 1441
    :cond_92
    :goto_92
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 1447
    :cond_9f
    :goto_9f
    return-void

    .line 1438
    :cond_a0
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$e;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_92

    .line 1439
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_af} :catch_b0

    goto :goto_92

    .line 1444
    :catch_b0
    move-exception v0

    .line 1445
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f
.end method
