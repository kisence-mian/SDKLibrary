.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$3;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;
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
    .line 132
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 145
    return-void
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 135
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 140
    :goto_8
    return-void

    .line 138
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    goto :goto_8
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 165
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 170
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Z)Z

    .line 171
    if-eqz p1, :cond_19

    .line 172
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->c()V

    .line 177
    :cond_18
    :goto_18
    return-void

    .line 174
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->d()V

    goto :goto_18
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 10

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 186
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a()V

    .line 187
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->b()V

    .line 201
    :cond_20
    :goto_20
    return-void

    .line 189
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    .line 190
    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v6

    .line 191
    invoke-virtual {v6, p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_5f

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_65

    move-result-object v3

    .line 1035
    if-eqz v6, :cond_5f

    :try_start_3c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1036
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 1037
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    move-object v4, p2

    .line 1037
    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5f} :catch_72

    .line 195
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_20

    .line 198
    :catch_65
    move-exception v0

    .line 199
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 1041
    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_65

    goto :goto_5f
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 150
    return-void
.end method

.method public final b(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 154
    if-ne p1, v2, :cond_10

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    .line 156
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;I)V

    .line 160
    :goto_f
    return-void

    .line 158
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    goto :goto_f
.end method
