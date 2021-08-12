.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;
.super Ljava/lang/Object;
.source "NativeExpressView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 239
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 240
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 241
    if-eqz p1, :cond_1d

    .line 242
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 244
    :cond_1d
    goto :goto_57

    .line 245
    :cond_1e
    nop

    .line 246
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p2, :cond_3b

    .line 247
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_3b

    :cond_30
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    .line 249
    :cond_3b
    :goto_3b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->g:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j:Ljava/lang/String;

    invoke-static {p2, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p2

    .line 250
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()V

    .line 253
    :goto_57
    return-void
.end method
