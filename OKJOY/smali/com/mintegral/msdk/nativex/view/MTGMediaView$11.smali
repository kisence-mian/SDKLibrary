.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;
.super Lcom/mintegral/msdk/widget/a;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 710
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 715
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 719
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 720
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 722
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_76

    .line 723
    :cond_45
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->halfLoadingViewisVisible()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_65

    .line 724
    :cond_5d
    const-string v0, "MTGMediaView"

    const-string v1, "is loading or no playing return;"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_64
    :goto_64
    return-void

    .line 727
    :cond_65
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_64

    .line 740
    :catch_6b
    move-exception v0

    .line 741
    const-string v1, "MTGMediaView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    .line 729
    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 730
    const-string v0, "MTGMediaView"

    const-string v1, "fullScreenShowUI"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    goto :goto_64

    .line 734
    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 735
    const-string v0, "MTGMediaView"

    const-string v1, "\u4e0d\u5141\u8bb8\u5168\u5c4f \u8df3gp"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 737
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;->CLICK:Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adUserInteraction(Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_aa} :catch_6b

    goto :goto_64
.end method
