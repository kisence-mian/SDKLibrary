.class Lcom/bytedance/sdk/openadsdk/core/widget/e$1;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e;)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V

    .line 77
    :cond_19
    return-void
.end method
