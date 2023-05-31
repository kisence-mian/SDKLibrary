.class Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;
.super Ljava/lang/Object;
.source "TTLandingPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    const-string v1, "\u4e0b\u8f7d\u4e2d..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    const-string v1, "\u70b9\u51fb\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    const-string v1, "\u6682\u505c"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onIdle()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    const-string v1, "\u70b9\u51fb\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;Ljava/lang/String;)V

    .line 285
    return-void
.end method
