.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;
.super Ljava/lang/Object;
.source "BannerExpressView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 200
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->i:Z

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V

    .line 195
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 189
    return-void
.end method
