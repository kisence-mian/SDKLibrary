.class Lcom/bytedance/sdk/openadsdk/core/n$3;
.super Ljava/lang/Object;
.source "InsertAdDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/n;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/n;Landroid/view/View;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n$3;->b:Lcom/bytedance/sdk/openadsdk/core/n;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/n$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 158
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n$3;->b:Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/core/n$a;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 159
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n$3;->b:Lcom/bytedance/sdk/openadsdk/core/n;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/core/n$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n$3;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/n$a;->a(Landroid/view/View;)V

    .line 161
    :cond_13
    return-void
.end method
