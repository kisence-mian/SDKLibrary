.class final Lcom/mintegral/msdk/reward/a/c$d;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    if-eqz p1, :cond_7

    .line 1745
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1747
    :cond_7
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1748
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$d;->c:Ljava/lang/String;

    .line 1749
    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1780
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_1e

    .line 1781
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_22

    .line 1782
    :try_start_7
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "DownTemplateImgCommonImageLoaderListener IMAGE failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v2, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1787
    monitor-exit v1

    .line 1793
    :cond_1e
    :goto_1e
    return-void

    .line 1787
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_22} :catch_22

    .line 1790
    :catch_22
    move-exception v0

    .line 1791
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1754
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/i;->a()Lcom/mintegral/msdk/videocommon/download/i;

    invoke-static {p2}, Lcom/mintegral/msdk/videocommon/download/i;->c(Ljava/lang/String;)V

    .line 1755
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownTemplateImgCommonImageLoaderListener IMAGE SUCCESS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_5a

    .line 1757
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_5e

    .line 1758
    :try_start_21
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "adapter 1433"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1760
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1761
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1762
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1763
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1764
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1765
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$d;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1769
    :cond_59
    monitor-exit v1

    .line 1775
    :cond_5a
    :goto_5a
    return-void

    .line 1769
    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5e} :catch_5e

    .line 1771
    :catch_5e
    move-exception v0

    .line 1772
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method
