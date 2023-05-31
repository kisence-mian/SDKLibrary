.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)V
    .registers 2

    .prologue
    .line 730
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_1c

    .line 734
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;->g()V

    .line 735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    if-eqz v0, :cond_1c

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->H:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;->onClickRetry()V

    .line 739
    :cond_1c
    return-void
.end method
