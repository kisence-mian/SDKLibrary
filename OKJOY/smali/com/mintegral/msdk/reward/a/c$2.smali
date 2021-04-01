.class final Lcom/mintegral/msdk/reward/a/c$2;
.super Lcom/mintegral/msdk/reward/e/a;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/a/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/a/c;)V
    .registers 2

    .prologue
    .line 772
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {p0}, Lcom/mintegral/msdk/reward/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 790
    const-string v0, "RewardMVVideoAdapter"

    invoke-static {v0, p2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadCompaginFailed load failed errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->h(Lcom/mintegral/msdk/reward/a/c;)V

    .line 794
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 4

    .prologue
    .line 778
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u56de\u6765"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 786
    :goto_c
    return-void

    .line 781
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    const-string v1, "Exception after load success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->h(Lcom/mintegral/msdk/reward/a/c;)V

    goto :goto_c
.end method
