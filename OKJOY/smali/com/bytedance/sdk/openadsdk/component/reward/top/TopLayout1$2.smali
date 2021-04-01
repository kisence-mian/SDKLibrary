.class Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;
.super Ljava/lang/Object;
.source "TopLayout1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/b;->a(Landroid/view/View;)V

    .line 93
    :cond_11
    return-void
.end method
