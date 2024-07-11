.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;
.source "TTVideoScrollWebPageActivity.java"


# instance fields
.field private h:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 21
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_scroll_view"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->setListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;)V

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_27

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->e(Z)V

    .line 43
    :cond_27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz p1, :cond_35

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 76
    :cond_35
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoScrollWebPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_activity_video_scroll_landingpage"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->setContentView(I)V

    .line 81
    return-void
.end method
