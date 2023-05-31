.class Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TTCountdownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z

    .line 273
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z

    .line 284
    :cond_e
    :goto_e
    return-void

    .line 281
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->b()V

    goto :goto_e
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->a()V

    .line 291
    :cond_11
    return-void
.end method
