.class Lcom/bytedance/sdk/openadsdk/core/widget/d$2;
.super Ljava/lang/Object;
.source "DownloadCommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$a;->b(Landroid/app/Dialog;)V

    .line 89
    :cond_13
    return-void
.end method
