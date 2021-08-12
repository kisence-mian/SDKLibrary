.class Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$3;
.super Ljava/lang/Object;
.source "TopLayoutDislike2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/b;->a(Landroid/view/View;)V

    .line 101
    :cond_11
    return-void
.end method
