.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;
.super Ljava/lang/Object;
.source "TTVideoScrollWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    .line 68
    return-void
.end method

.method public c()V
    .registers 1

    .line 63
    return-void
.end method

.method public d()V
    .registers 1

    .line 73
    return-void
.end method

.method public d_()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->a()Z

    move-result v0

    if-nez v0, :cond_28

    .line 48
    const-string v0, "TTVideoScrollWebPageActivity"

    const-string v1, "video start play but video is hidden so pause"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_28

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->i()V

    .line 53
    :cond_28
    return-void
.end method

.method public e_()V
    .registers 1

    .line 58
    return-void
.end method
