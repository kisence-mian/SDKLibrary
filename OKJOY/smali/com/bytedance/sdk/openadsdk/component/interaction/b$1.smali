.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->b(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    const-string v2, "interaction"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->d(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdShow()V

    .line 88
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->c(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 92
    :cond_4a
    return-void
.end method
