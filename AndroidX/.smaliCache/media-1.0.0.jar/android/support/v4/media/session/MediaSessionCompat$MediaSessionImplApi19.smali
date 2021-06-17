.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;
.super Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi19"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .line 3300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 3301
    return-void
.end method


# virtual methods
.method buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 11
    .param p1, "metadata"    # Landroid/os/Bundle;

    .line 3335
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 3336
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_c

    move-wide v4, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    .line 3337
    .local v4, "actions":J
    :goto_12
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const v1, 0x10000001

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1f

    .line 3338
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 3341
    :cond_1f
    if-nez p1, :cond_22

    .line 3342
    return-object v0

    .line 3344
    :cond_22
    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3345
    const/16 v3, 0x8

    .line 3346
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3345
    invoke-virtual {v0, v3, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3348
    :cond_33
    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 3350
    const/16 v3, 0x65

    .line 3351
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 3350
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 3353
    :cond_44
    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 3355
    nop

    .line 3356
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 3355
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 3358
    :cond_54
    return-object v0
.end method

.method getRccTransportControlFlagsFromActions(J)I
    .registers 9
    .param p1, "actions"    # J

    .line 3326
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 3327
    .local v0, "transportControlFlags":I
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    .line 3328
    or-int/lit16 v0, v0, 0x200

    .line 3330
    :cond_f
    return v0
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3305
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 3306
    if-nez p1, :cond_c

    .line 3307
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    goto :goto_16

    .line 3309
    :cond_c
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V

    .line 3320
    .local v0, "listener":Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 3322
    .end local v0    # "listener":Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    :goto_16
    return-void
.end method
