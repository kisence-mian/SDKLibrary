.class final Lcom/mintegral/msdk/mtgnative/c/c$a$3;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c$a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mintegral/msdk/mtgnative/c/c$a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 1658
    const/4 v0, 0x0

    .line 1659
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-eqz v1, :cond_eb

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_eb

    .line 1660
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1661
    const/4 v0, 0x1

    move v1, v0

    .line 1663
    :goto_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->g(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1664
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1665
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "REMOVE CANCEL TASK ON onAdLoaded"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1669
    :cond_3a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->a:Ljava/util/List;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_df

    .line 1671
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Frame;

    .line 1672
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v0

    .line 1673
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 1674
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c;->c(Lcom/mintegral/msdk/mtgnative/c/c;)Z

    move-result v4

    invoke-static {v4, v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/out/Campaign;)V

    goto :goto_60

    .line 1679
    :cond_7c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->a:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->g()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 1682
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->g()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    :cond_c5
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->g()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$3;->b:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    :cond_df
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_ea

    if-eqz v1, :cond_ea

    .line 1688
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1690
    :cond_ea
    return-void

    :cond_eb
    move v1, v0

    goto/16 :goto_10
.end method
