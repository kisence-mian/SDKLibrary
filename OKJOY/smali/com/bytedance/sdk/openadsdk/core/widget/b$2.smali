.class Lcom/bytedance/sdk/openadsdk/core/widget/b$2;
.super Ljava/lang/Object;
.source "InstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/b;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->b(Landroid/app/Dialog;)V

    .line 84
    :cond_18
    return-void
.end method
