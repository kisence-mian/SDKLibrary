.class final Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;
.super Ljava/lang/Object;
.source "VideoWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;->a:Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;->a:Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->e()I

    move-result v0

    if-nez v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;->a:Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;

    const/4 v1, -0x3

    const-string v2, "JS bridge connect timeout"

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->defaultLoad(ILjava/lang/String;)V

    .line 87
    :goto_14
    return-void

    .line 85
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;->a:Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->a(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;I)I

    goto :goto_14
.end method
