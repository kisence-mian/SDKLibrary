.class Lcom/bytedance/sdk/openadsdk/core/c/b$2;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 239
    :cond_11
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 250
    const-string v0, "TTInteractionExpressAd"

    const-string v2, "ExpressView SHOW"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string v3, "dynamic_show_type"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m()Z

    move-result v0

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->d(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c/b;->e(Lcom/bytedance/sdk/openadsdk/core/c/b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->f(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->f(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 257
    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 260
    :cond_58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/c/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_89

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->d(Lcom/bytedance/sdk/openadsdk/core/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->b(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->e(Lcom/bytedance/sdk/openadsdk/core/c/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 265
    :cond_89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()V

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g()V

    .line 269
    :cond_a3
    return-void

    .line 252
    :cond_a4
    const/4 v0, 0x0

    goto/16 :goto_1c
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 219
    const-string v0, "TTInteractionExpressAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressView onWindowFocusChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 222
    if-eqz p1, :cond_34

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 232
    :cond_33
    :goto_33
    return-void

    .line 227
    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_33
.end method

.method public b()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 246
    :cond_11
    return-void
.end method
