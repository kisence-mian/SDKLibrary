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

    .line 421
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 438
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)V"
        }
    .end annotation

    .line 424
    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 428
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 431
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->c()V

    .line 432
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 433
    return-void

    .line 425
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 426
    return-void
.end method
