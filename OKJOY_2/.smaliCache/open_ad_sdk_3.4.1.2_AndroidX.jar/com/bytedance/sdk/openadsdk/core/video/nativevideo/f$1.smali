.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    if-eqz v0, :cond_7

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;->a(Landroid/view/View;I)V

    .line 133
    :cond_7
    return-void
.end method
