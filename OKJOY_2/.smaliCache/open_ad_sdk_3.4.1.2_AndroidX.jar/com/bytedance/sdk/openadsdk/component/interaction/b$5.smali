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

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 184
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 3

    .line 188
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 189
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->j(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/l;->a()V

    .line 193
    :cond_26
    return-void

    .line 196
    :cond_27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/l;->b()V

    .line 199
    :cond_38
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 209
    return-void
.end method

.method public b()V
    .registers 1

    .line 204
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 214
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->k(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/l;->b()V

    .line 216
    :cond_11
    return-void
.end method
