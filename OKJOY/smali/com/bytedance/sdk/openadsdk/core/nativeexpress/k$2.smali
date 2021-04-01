.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;
.super Ljava/lang/Object;
.source "TTNativeExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 231
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 242
    const-string v0, "TTNativeExpressAd"

    const-string v2, "ExpressView SHOW"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    const-string v3, "dynamic_show_type"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m()Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    invoke-static {v0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 249
    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 252
    :cond_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_79

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_79

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 257
    :cond_79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_8d

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()V

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    .line 261
    :cond_8d
    return-void

    .line 244
    :cond_8e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 214
    if-eqz p1, :cond_1c

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 224
    :cond_1b
    :goto_1b
    return-void

    .line 219
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_1b
.end method

.method public b()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 238
    :cond_11
    return-void
.end method
