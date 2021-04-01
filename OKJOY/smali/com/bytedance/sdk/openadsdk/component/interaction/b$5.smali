.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 5

    .prologue
    .line 179
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a()V

    .line 190
    :cond_26
    :goto_26
    return-void

    .line 187
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->b()V

    goto :goto_26
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
    .line 200
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 195
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
    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->b()V

    .line 207
    :cond_11
    return-void
.end method
