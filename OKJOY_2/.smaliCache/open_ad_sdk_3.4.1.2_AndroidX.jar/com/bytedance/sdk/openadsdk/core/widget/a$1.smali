.class Lcom/bytedance/sdk/openadsdk/core/widget/a$1;
.super Ljava/lang/Object;
.source "AppDetailFullDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 160
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a;)Lcom/bytedance/sdk/openadsdk/core/widget/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$a;->a(Landroid/app/Dialog;)V

    .line 163
    :cond_13
    return-void
.end method
