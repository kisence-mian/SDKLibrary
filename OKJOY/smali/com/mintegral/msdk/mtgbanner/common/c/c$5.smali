.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$5;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    .line 409
    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->o(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->buildClickJsonObject(FF)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    .line 408
    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->managerCampaignEX(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 412
    return-void
.end method
