.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;
.super Ljava/lang/Object;
.source "NativeVideoLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V
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

    .line 239
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;->a(Landroid/view/View;I)V

    .line 245
    :cond_11
    return-void
.end method
