.class Lcom/bytedance/sdk/openadsdk/core/c/a$2;
.super Ljava/lang/Object;
.source "InteractionExpressBackupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/a;->b(Landroid/view/View;)V
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

    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 199
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a$2;->a:Lcom/bytedance/sdk/openadsdk/core/c/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 202
    :cond_11
    return-void
.end method
