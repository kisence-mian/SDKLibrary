.class Lcom/bytedance/sdk/openadsdk/core/widget/e$2;
.super Ljava/lang/Object;
.source "InstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()V
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

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->dismiss()V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e;)Lcom/bytedance/sdk/openadsdk/core/widget/e$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->b(Landroid/app/Dialog;)V

    .line 84
    :cond_18
    return-void
.end method
