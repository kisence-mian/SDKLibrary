.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
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
    .line 643
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 648
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 649
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u9690\u85cf\u8fdb\u5ea6\u6761"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 653
    :goto_11
    return-void

    .line 651
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
