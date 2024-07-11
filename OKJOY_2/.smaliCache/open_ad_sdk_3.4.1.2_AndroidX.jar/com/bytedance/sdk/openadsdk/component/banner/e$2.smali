.class Lcom/bytedance/sdk/openadsdk/component/banner/e$2;
.super Ljava/lang/Object;
.source "TTBannerAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/c;Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 318
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 331
    const-string v0, "TTBannerAd"

    const-string v1, "BANNER SHOW"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pangolin ad show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdEvent"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 337
    :cond_53
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 294
    if-eqz p1, :cond_1c

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_2d

    .line 299
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 304
    :cond_2d
    :goto_2d
    const-string v0, "TTBannerAd"

    if-eqz p1, :cond_3c

    .line 305
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 306
    const-string p1, "\u83b7\u5f97\u7126\u70b9\uff0c\u5f00\u59cb\u8ba1\u65f6"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 308
    :cond_3c
    const-string p1, "\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u8ba1\u65f6"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 311
    :goto_46
    return-void
.end method

.method public b()V
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 326
    :cond_16
    return-void
.end method
