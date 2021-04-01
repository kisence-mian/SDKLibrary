.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;
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
    .line 2228
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 2232
    :try_start_0
    const-string v0, "MTGMediaView"

    const-string v1, "\u70b9\u51fb\u5b89\u88c5 click"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2234
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2235
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;->CLICK:Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adUserInteraction(Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2240
    :cond_1f
    :goto_1f
    return-void

    .line 2238
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
