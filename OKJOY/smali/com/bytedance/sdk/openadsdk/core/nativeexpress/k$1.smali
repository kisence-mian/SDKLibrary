.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;
.super Ljava/lang/Object;
.source "TTNativeExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 6

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 180
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 182
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/dislike/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
