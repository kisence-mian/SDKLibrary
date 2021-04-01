.class Lcom/bytedance/sdk/openadsdk/core/c/b$5;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->g(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    .line 350
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->i(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    return-void
.end method
