.class public Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 2

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    .line 996
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 999
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    const-string v1, "=========onPlayCompleted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_c

    .line 1013
    :goto_b
    return-void

    .line 1003
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->n(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1004
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u64ad\u653e\u7ed3\u675f \u8c03\u7528onClickPlayButton"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_b

    .line 1011
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 1007
    :cond_26
    :try_start_26
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u64ad\u653e\u7ed3\u675f \u4e0d\u80fd\u5faa\u73af\u64ad\u653e \u663e\u793aendcardView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_21

    goto :goto_b
.end method
