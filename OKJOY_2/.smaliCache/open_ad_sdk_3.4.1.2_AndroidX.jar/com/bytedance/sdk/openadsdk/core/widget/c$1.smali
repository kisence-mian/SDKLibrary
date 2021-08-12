.class Lcom/bytedance/sdk/openadsdk/core/widget/c$1;
.super Ljava/lang/Object;
.source "CustomCommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/c;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    if-eqz p1, :cond_d

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/c$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a()V

    .line 93
    :cond_d
    return-void
.end method
