.class Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;
.super Ljava/lang/Object;
.source "TopLayoutDislike2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->c()V
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

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->b(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_b
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;Z)Z

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->b(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_mute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 86
    :goto_22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->c(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;)Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/b;->b(Landroid/view/View;)V

    .line 90
    :cond_3c
    return-void

    .line 83
    :cond_3d
    const/4 v0, 0x0

    goto :goto_b

    .line 84
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2$2;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_unmute"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_22
.end method
