.class Lcom/bytedance/sdk/openadsdk/core/c/b$1;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
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

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;I)Z
    .registers 5

    .line 210
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l()V

    .line 211
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/c/b;->l:Lcom/bytedance/sdk/openadsdk/core/c/a;

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/c/b;->l:Lcom/bytedance/sdk/openadsdk/core/c/a;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/c/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/c/b;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/c/b;->h:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2a

    .line 215
    nop

    .line 216
    const/4 p1, 0x1

    return p1

    .line 213
    :catch_2a
    move-exception p1

    .line 214
    const/4 p1, 0x0

    return p1
.end method
