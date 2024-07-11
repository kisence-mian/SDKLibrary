.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/n$a;


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

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    .line 121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->h(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    const-string v1, "interaction"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdDismiss()V

    .line 126
    :cond_27
    const-string p1, "TTInteractionAdImpl"

    const-string v0, "dislike\u4e8b\u4ef6\u53d1\u51fa"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 109
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->f(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->g(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V

    .line 116
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$3;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->i(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    .line 133
    return-void
.end method
