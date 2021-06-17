.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StubApi21"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    .line 856
    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(IIIII)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "stream"    # I
    .param p3, "control"    # I
    .param p4, "max"    # I
    .param p5, "current"    # I

    .line 927
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 928
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_18

    .line 929
    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    .line 932
    :cond_18
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 918
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 919
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_d

    .line 920
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 922
    :cond_d
    return-void
.end method

.method public onMetadataChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1, "metadataObj"    # Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 895
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_11

    .line 896
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 898
    :cond_11
    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1, "stateObj"    # Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 882
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_17

    .line 883
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_f

    goto :goto_17

    .line 886
    :cond_f
    nop

    .line 887
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 886
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 890
    :cond_17
    :goto_17
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 902
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 903
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_11

    .line 904
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 906
    :cond_11
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 910
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 911
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_d

    .line 912
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 914
    :cond_d
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 861
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_d

    .line 862
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    .line 864
    :cond_d
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 868
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 869
    .local v0, "callback":Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    if-eqz v0, :cond_18

    .line 870
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_15

    goto :goto_18

    .line 874
    :cond_15
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 877
    :cond_18
    :goto_18
    return-void
.end method
