.class Lcom/bytedance/sdk/openadsdk/core/c/b$4;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 325
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 331
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->d(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->b(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    const-string v2, "interaction"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->h(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$4;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->h(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;->onAdDismiss()V

    .line 335
    :cond_33
    const-string v0, "TTInteractionExpressAd"

    const-string v1, "dislike\u4e8b\u4ef6\u53d1\u51fa"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method
