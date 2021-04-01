.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


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
    .line 851
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 855
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 859
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 860
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    :cond_1c
    return-void
.end method
