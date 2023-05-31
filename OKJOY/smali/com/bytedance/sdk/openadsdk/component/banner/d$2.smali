.class Lcom/bytedance/sdk/openadsdk/component/banner/d$2;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/d;->b(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/component/banner/c;)V
    .registers 3

    .prologue
    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 228
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Z)Z

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b(Lcom/bytedance/sdk/openadsdk/component/banner/d;)V

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    if-eqz v0, :cond_1a

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 222
    :cond_1a
    const-string v0, "TTBannerAd"

    const-string v1, "SLIDE END"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 233
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 211
    const-string v0, "TTBannerAd"

    const-string v1, "SLIDE START"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
