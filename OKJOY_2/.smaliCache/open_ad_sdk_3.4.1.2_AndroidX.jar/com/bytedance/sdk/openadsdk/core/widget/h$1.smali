.class Lcom/bytedance/sdk/openadsdk/core/widget/h$1;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/h;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Lcom/bytedance/sdk/openadsdk/core/widget/h;)V

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->b(Lcom/bytedance/sdk/openadsdk/core/widget/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->b(Lcom/bytedance/sdk/openadsdk/core/widget/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/h$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/h$a;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/h$a;Ljava/lang/String;)V

    .line 82
    :cond_19
    return-void
.end method
