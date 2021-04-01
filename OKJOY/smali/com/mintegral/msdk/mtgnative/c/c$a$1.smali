.class final Lcom/mintegral/msdk/mtgnative/c/c$a$1;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

.field final synthetic b:Lcom/mintegral/msdk/mtgnative/c/c$a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 3

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1470
    .line 1471
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-eqz v0, :cond_254

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_254

    .line 1472
    invoke-static {}, Landroid/os/Looper;->prepare()V

    move v1, v2

    .line 1475
    :goto_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1476
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "REMOVE CANCEL TASK ON SUCCESS"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1479
    :cond_32
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "onSuccess"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 1482
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->g()Ljava/util/Map;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1483
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->g()Ljava/util/Map;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    :cond_7b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    if-lez v0, :cond_15e

    .line 1487
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v4

    if-le v0, v4, :cond_14f

    .line 1488
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    .line 1514
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->e(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v4

    if-ge v0, v4, :cond_bb

    .line 1515
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v4, v4, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    .line 1518
    :cond_bb
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v5, v3

    .line 1523
    :goto_c7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1fe

    .line 1524
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1525
    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v8

    .line 1527
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1526
    invoke-static {v8, v9}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 1528
    if-eqz v8, :cond_10f

    .line 1529
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_10f

    .line 1530
    new-instance v5, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v5, v2

    .line 1536
    :cond_10f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v10}, Lcom/mintegral/msdk/mtgnative/c/c$a;->e(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v10

    if-ge v9, v10, :cond_13b

    .line 1538
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v9

    const/16 v10, 0x63

    if-eq v9, v10, :cond_13b

    .line 1540
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v9

    if-eq v9, v2, :cond_12b

    if-nez v8, :cond_1e0

    .line 1541
    :cond_12b
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13b

    .line 1543
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    :cond_13b
    :goto_13b
    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v8}, Lcom/mintegral/msdk/mtgnative/c/c;->c(Lcom/mintegral/msdk/mtgnative/c/c;)Z

    move-result v8

    invoke-static {v8, v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/out/Campaign;)V

    .line 1523
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_c7

    .line 1490
    :cond_14f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v4, v4, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    goto/16 :goto_9e

    .line 1493
    :cond_15e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_16e

    .line 1494
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0, v3}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    goto/16 :goto_9e

    .line 1495
    :cond_16e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    const/4 v4, -0x3

    if-ne v0, v4, :cond_186

    .line 1496
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v4, v4, Lcom/mintegral/msdk/base/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    goto/16 :goto_9e

    .line 1497
    :cond_186
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    const/4 v4, -0x2

    if-ne v0, v4, :cond_9e

    .line 1499
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getTemplate()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1cc

    .line 1500
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->c(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1501
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->c(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    .line 1509
    :cond_1ab
    :goto_1ab
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->e(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    if-gtz v0, :cond_9e

    .line 1510
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1511
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4, v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    goto/16 :goto_9e

    .line 1505
    :cond_1cc
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->d(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1506
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->d(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;I)I

    goto :goto_1ab

    .line 1546
    :cond_1e0
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v8

    if-nez v8, :cond_1ec

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v8

    if-eqz v8, :cond_13b

    .line 1547
    :cond_1ec
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13b

    .line 1549
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b

    .line 1572
    :cond_1fe
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1573
    if-eqz v5, :cond_212

    .line 1574
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    .line 1577
    :cond_212
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22e

    .line 1578
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v2

    .line 1580
    :cond_22e
    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_23b

    .line 1582
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1595
    :cond_23b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->f(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$1;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ILjava/lang/String;)V

    .line 1597
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_253

    if-eqz v1, :cond_253

    .line 1598
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1600
    :cond_253
    return-void

    :cond_254
    move v1, v3

    goto/16 :goto_10
.end method
