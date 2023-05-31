.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$8;
.super Ljava/util/TimerTask;
.source "MediaViewPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 2

    .prologue
    .line 874
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$8;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$8;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 882
    :goto_5
    return-void

    .line 879
    :catch_6
    move-exception v0

    .line 880
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
