.class Lcom/bytedance/sdk/openadsdk/core/c/a$1;
.super Ljava/lang/Object;
.source "InteractionExpressBackupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/c/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 176
    :cond_11
    return-void
.end method
