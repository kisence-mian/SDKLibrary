.class Lcom/bytedance/sdk/openadsdk/component/banner/b$3;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/banner/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 7

    .prologue
    .line 139
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz v0, :cond_1c

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/banner/a;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 149
    :cond_1c
    :goto_1c
    return-void

    .line 146
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    goto :goto_1c
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    .line 166
    :cond_9
    return-void
.end method
