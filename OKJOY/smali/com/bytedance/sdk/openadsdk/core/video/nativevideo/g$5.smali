.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;
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

    .prologue
    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 220
    :cond_11
    return-void
.end method
