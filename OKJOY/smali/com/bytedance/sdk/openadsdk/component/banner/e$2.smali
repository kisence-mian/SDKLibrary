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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/e;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 289
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 317
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 330
    const-string v0, "TTBannerAd"

    const-string v1, "BANNER SHOW"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->e(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->f(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->g(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 335
    :cond_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 338
    :cond_42
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 293
    if-eqz p1, :cond_2a

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 303
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_3c

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->a(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 305
    const-string v0, "TTBannerAd"

    const-string v1, "\u83b7\u5f97\u7126\u70b9\uff0c\u5f00\u59cb\u8ba1\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_29
    return-void

    .line 298
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_1b

    .line 307
    :cond_3c
    const-string v0, "TTBannerAd"

    const-string v1, "\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u8ba1\u65f6"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    goto :goto_29
.end method

.method public b()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->c(Lcom/bytedance/sdk/openadsdk/component/banner/e;)V

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/e;->b(Lcom/bytedance/sdk/openadsdk/component/banner/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 325
    :cond_16
    return-void
.end method
