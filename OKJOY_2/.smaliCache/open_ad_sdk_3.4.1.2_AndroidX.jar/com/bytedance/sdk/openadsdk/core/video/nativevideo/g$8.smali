.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$8;
.super Ljava/lang/Object;
.source "NativeVideoDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V
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

    .line 431
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 434
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_d

    .line 435
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->g()V

    .line 438
    :cond_d
    return-void
.end method
