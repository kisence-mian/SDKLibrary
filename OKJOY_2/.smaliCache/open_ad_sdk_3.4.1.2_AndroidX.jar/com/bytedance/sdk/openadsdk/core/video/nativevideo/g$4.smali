.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;
.super Ljava/lang/Object;
.source "NativeVideoDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(ZZ)V

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f()V

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d()V

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 209
    :cond_22
    return-void
.end method
