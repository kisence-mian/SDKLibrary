.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;
.super Lcom/mintegral/msdk/mtgjscommon/b/a;
.source "MintegralH5EndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->preLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "========"

    const-string v1, "===========onReceivedError"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 273
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError,url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x76

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->reportRenderFailed(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    .line 281
    :cond_4c
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 235
    const-string v0, "========"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===========finish+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->c(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    .line 238
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished,url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x64

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_dc

    .line 242
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->c(I)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->d(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->p(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->f(Ljava/lang/String;)V

    .line 249
    const-string v0, "2"

    .line 250
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v2, v2, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v2, v2, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 251
    const-string v0, "1"

    .line 253
    :cond_a7
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->g(Ljava/lang/String;)V

    .line 254
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x11f

    if-ne v0, v2, :cond_e8

    .line 256
    const-string v0, "3"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 262
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_10c

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_cc
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 263
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/a;->c(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    :cond_dc
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x78

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 267
    :cond_e7
    return-void

    .line 257
    :cond_e8
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_fa

    .line 258
    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    goto :goto_c0

    .line 259
    :cond_fa
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$4;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_c0

    .line 260
    const-string v0, "2"

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    goto :goto_c0

    .line 262
    :cond_10c
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_cc
.end method
