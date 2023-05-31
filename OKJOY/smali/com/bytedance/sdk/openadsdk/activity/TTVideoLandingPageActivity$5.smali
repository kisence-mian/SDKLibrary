.class Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;
.super Ljava/lang/Object;
.source "TTVideoLandingPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    const-string v1, "\u4e0b\u8f7d\u4e2d..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    const-string v1, "\u70b9\u51fb\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    const-string v1, "\u6682\u505c"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onIdle()V
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    const-string v1, "\u70b9\u51fb\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;Ljava/lang/String;)V

    .line 394
    return-void
.end method
