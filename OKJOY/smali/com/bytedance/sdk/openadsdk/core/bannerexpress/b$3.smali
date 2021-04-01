.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;
.super Ljava/lang/Object;
.source "TTBannerExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V
    .registers 2

    .prologue
    .line 387
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 400
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_26

    const/4 v0, 0x0

    .line 391
    :goto_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 392
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->i(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->e()V

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 395
    return-void

    .line 390
    :cond_26
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    goto :goto_3
.end method
