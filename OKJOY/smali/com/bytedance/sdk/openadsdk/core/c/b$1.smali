.class Lcom/bytedance/sdk/openadsdk/core/c/b$1;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
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
    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 7

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->b(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method
