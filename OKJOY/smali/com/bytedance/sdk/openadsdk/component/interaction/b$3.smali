.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a()V
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
    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    const-string v2, "interaction"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdDismiss()V

    .line 123
    :cond_27
    const-string v0, "TTInteractionAdImpl"

    const-string v1, "dislike\u4e8b\u4ef6\u53d1\u51fa"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 114
    return-void
.end method
