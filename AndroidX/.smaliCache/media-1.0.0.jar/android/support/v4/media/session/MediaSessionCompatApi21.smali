.class Landroid/support/v4/media/session/MediaSessionCompatApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MediaSessionCompatApi21"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    .line 64
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    return-object v0
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static hasCallback(Ljava/lang/Object;)Z
    .registers 6
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "callbackField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mCallback"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v0, v2

    .line 146
    if-eqz v0, :cond_1b

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_17} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_17} :catch_1c

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 152
    :cond_1b
    goto :goto_26

    .line 150
    :catch_1c
    move-exception v2

    goto :goto_1f

    :catch_1e
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1f
    const-string v3, "MediaSessionCompatApi21"

    const-string v4, "Failed to get mCallback object."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_26
    return v1
.end method

.method public static isActive(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .line 91
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public static release(Ljava/lang/Object;)V
    .registers 2
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .line 99
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 100
    return-void
.end method

.method public static sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public static setActive(Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "active"    # Z

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 88
    return-void
.end method

.method public static setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 5
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 69
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 139
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public static setFlags(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "flags"    # I

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 73
    return-void
.end method

.method public static setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 119
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 120
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "metadataObj"    # Ljava/lang/Object;

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    move-object v1, p1

    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 112
    return-void
.end method

.method public static setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "stateObj"    # Ljava/lang/Object;

    .line 107
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    move-object v1, p1

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 108
    return-void
.end method

.method public static setPlaybackToLocal(Ljava/lang/Object;I)V
    .registers 5
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .line 77
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 78
    .local v0, "bob":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 79
    move-object v1, p0

    check-cast v1, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 80
    return-void
.end method

.method public static setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "volumeProviderObj"    # Ljava/lang/Object;

    .line 83
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    move-object v1, p1

    check-cast v1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 84
    return-void
.end method

.method public static setQueue(Ljava/lang/Object;Ljava/util/List;)V
    .registers 6
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_a

    .line 124
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 125
    return-void

    .line 127
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "itemObj":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "itemObj":Ljava/lang/Object;
    goto :goto_13

    .line 131
    :cond_24
    move-object v1, p0

    check-cast v1, Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    .line 132
    return-void
.end method

.method public static setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 135
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public static setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 115
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 116
    return-void
.end method

.method public static verifySession(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "mediaSession"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p0, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_5

    .line 51
    return-object p0

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaSession is not a valid MediaSession object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyToken(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "token"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_5

    .line 58
    return-object p0

    .line 60
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token is not a valid MediaSession.Token object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
