.class Lcom/bytedance/sdk/openadsdk/core/widget/b$1;
.super Ljava/lang/Object;
.source "AppPrivacyDialog.java"

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

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b;)Lcom/bytedance/sdk/openadsdk/core/widget/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b$a;->a(Landroid/app/Dialog;)V

    .line 52
    :cond_13
    return-void
.end method
