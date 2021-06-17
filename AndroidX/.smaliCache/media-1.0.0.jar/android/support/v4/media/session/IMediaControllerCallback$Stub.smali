.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onSessionReady:I = 0xd

.field static final TRANSACTION_onShuffleModeChanged:I = 0xc

.field static final TRANSACTION_onShuffleModeChangedRemoved:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_4
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_14

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    return-object v1

    .line 35
    :cond_14
    new-instance v1, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_ec

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    .line 178
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionReady()V

    .line 180
    return v2

    .line 170
    :sswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(I)V

    .line 174
    return v2

    .line 162
    .end local v0    # "_arg0":I
    :sswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    .line 165
    .local v0, "_arg0":Z
    :cond_2c
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    .line 166
    return v2

    .line 154
    .end local v0    # "_arg0":Z
    :sswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v0, 0x1

    .line 157
    .restart local v0    # "_arg0":Z
    :cond_3a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChangedRemoved(Z)V

    .line 158
    return v2

    .line 146
    .end local v0    # "_arg0":Z
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    .line 150
    return v2

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 136
    sget-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .local v0, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_5c

    .line 139
    .end local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_5b
    const/4 v0, 0x0

    .line 141
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_5c
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    return v2

    .line 120
    .end local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    .line 123
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_73

    .line 126
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_72
    const/4 v0, 0x0

    .line 128
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_73
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    return v2

    .line 107
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_77
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    .line 110
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg0":Ljava/lang/CharSequence;
    goto :goto_8a

    .line 113
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :cond_89
    const/4 v0, 0x0

    .line 115
    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    :goto_8a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    return v2

    .line 99
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_8e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    return v2

    .line 86
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_9b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ad

    .line 89
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .local v0, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_ae

    .line 92
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :cond_ad
    const/4 v0, 0x0

    .line 94
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :goto_ae
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    return v2

    .line 73
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_b2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4

    .line 76
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .local v0, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_c5

    .line 79
    .end local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_c4
    const/4 v0, 0x0

    .line 81
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_c5
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    return v2

    .line 67
    .end local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_c9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    return v2

    .line 52
    :sswitch_d0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e6

    .line 57
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_e7

    .line 60
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_e6
    const/4 v1, 0x0

    .line 62
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_e7
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return v2

    nop

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_d0
        0x2 -> :sswitch_c9
        0x3 -> :sswitch_b2
        0x4 -> :sswitch_9b
        0x5 -> :sswitch_8e
        0x6 -> :sswitch_77
        0x7 -> :sswitch_60
        0x8 -> :sswitch_49
        0x9 -> :sswitch_3e
        0xa -> :sswitch_30
        0xb -> :sswitch_22
        0xc -> :sswitch_17
        0xd -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
