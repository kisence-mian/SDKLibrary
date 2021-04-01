.class Lcom/bytedance/sdk/openadsdk/component/banner/b$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 61
    const-string v0, "BannerAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz v0, :cond_25

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    .line 65
    :cond_25
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 5

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V

    .line 80
    :cond_28
    :goto_28
    return-void

    .line 74
    :cond_29
    const-string v0, "BannerAdManager"

    const-string v1, "Banner\u5e7f\u544a\u89e3\u6790\u5931\u8d25/\u5e7f\u544a\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz v0, :cond_28

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    goto :goto_28
.end method
