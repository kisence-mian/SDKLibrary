.class final Lcom/mintegral/msdk/mtgbanner/common/c/b$3;
.super Ljava/lang/Object;
.source "BannerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

.field final synthetic b:Lcom/mintegral/msdk/mtgbanner/common/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/b;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 3

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 407
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5728\u5355\u72ec\u5b50\u7ebf\u7a0b\u4fdd\u5b58\u6570\u636e\u5e93 \u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->d()V

    .line 422
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 423
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->b:Lcom/mintegral/msdk/mtgbanner/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->f(Lcom/mintegral/msdk/mtgbanner/common/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/b$3;->a:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->updateInstallList(Landroid/content/Context;Ljava/util/List;)V

    .line 426
    :cond_41
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5728\u5355\u72ec\u5b50\u7ebf\u7a0b\u4fdd\u5b58\u6570\u636e\u5e93 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method
