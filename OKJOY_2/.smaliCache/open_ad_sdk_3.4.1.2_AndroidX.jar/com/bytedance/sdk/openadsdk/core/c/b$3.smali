.class Lcom/bytedance/sdk/openadsdk/core/c/b$3;
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

    .line 331
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 334
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_d

    .line 335
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 338
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/c/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    if-eqz p1, :cond_1a

    .line 339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/c/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;->onAdDismiss()V

    .line 341
    :cond_1a
    return-void
.end method
