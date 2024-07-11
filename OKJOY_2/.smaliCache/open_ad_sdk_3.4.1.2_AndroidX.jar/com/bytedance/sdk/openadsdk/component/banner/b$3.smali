.class Lcom/bytedance/sdk/openadsdk/component/banner/b$3;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/banner/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b;Lcom/bytedance/sdk/openadsdk/component/banner/b$a;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 135
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 5

    .line 139
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 140
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz p2, :cond_1a

    .line 141
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/banner/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/a;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V

    .line 143
    :cond_1a
    return-void

    .line 146
    :cond_1b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz p1, :cond_22

    .line 147
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    .line 149
    :cond_22
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

    .line 159
    return-void
.end method

.method public b()V
    .registers 1

    .line 154
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

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$a;

    if-eqz p1, :cond_7

    .line 164
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/b$a;->a()V

    .line 166
    :cond_7
    return-void
.end method
