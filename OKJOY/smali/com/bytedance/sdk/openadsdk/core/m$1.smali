.class Lcom/bytedance/sdk/openadsdk/core/m$1;
.super Ljava/lang/Object;
.source "InsertAdDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/m;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/m;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/m$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m$1;->a:Lcom/bytedance/sdk/openadsdk/core/m;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/m$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/m$a;->a(Landroid/view/View;)V

    .line 102
    :cond_11
    return-void
.end method
