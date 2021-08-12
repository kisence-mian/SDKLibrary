.class Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;
.super Ljava/lang/Object;
.source "TTInteractionAdImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/interaction/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/interaction/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/interaction/b;->e(Lcom/bytedance/sdk/openadsdk/component/interaction/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 102
    :cond_11
    return-void
.end method
