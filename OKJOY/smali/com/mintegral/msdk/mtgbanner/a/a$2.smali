.class final Lcom/mintegral/msdk/mtgbanner/a/a$2;
.super Ljava/lang/Object;
.source "BannerController.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/a/a;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;Lcom/mintegral/msdk/base/entity/CampaignUnit;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 148
    :cond_11
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/a/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCampaignFail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->b()V

    .line 150
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->g(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 159
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->g(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/base/entity/CampaignUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    .line 161
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->h(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/MTGBannerView;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 162
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->i(Lcom/mintegral/msdk/mtgbanner/a/a;)Z

    .line 163
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->j(Lcom/mintegral/msdk/mtgbanner/a/a;)V

    .line 166
    :cond_35
    return-void
.end method

.method public final b(Z)V
    .registers 5

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/mtgbanner/a/a;)Lcom/mintegral/msdk/out/BannerAdListener;

    move-result-object v0

    const-string v1, "banner res load failed"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 173
    :cond_13
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResourceFail:"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->b()V

    .line 175
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "banner res load failed"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/a/a$2;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Lcom/mintegral/msdk/mtgbanner/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    return-void
.end method
