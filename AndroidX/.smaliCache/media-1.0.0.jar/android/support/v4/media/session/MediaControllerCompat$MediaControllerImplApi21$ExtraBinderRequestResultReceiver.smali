.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private mMediaControllerImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
    .registers 3
    .param p1, "mediaControllerImpl"    # Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 2225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    .line 2227
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2231
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 2232
    .local v0, "mediaControllerImpl":Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
    if-eqz v0, :cond_32

    if-nez p2, :cond_d

    goto :goto_32

    .line 2235
    :cond_d
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2236
    :try_start_10
    iget-object v2, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2238
    invoke-static {p2, v3}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2237
    invoke-static {v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v3

    .line 2236
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setExtraBinder(Landroid/support/v4/media/session/IMediaSession;)V

    .line 2240
    iget-object v2, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v3, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    .line 2241
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2240
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSessionToken2Bundle(Landroid/os/Bundle;)V

    .line 2242
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacksLocked()V

    .line 2243
    monitor-exit v1

    .line 2244
    return-void

    .line 2243
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v2

    .line 2233
    :cond_32
    :goto_32
    return-void
.end method
