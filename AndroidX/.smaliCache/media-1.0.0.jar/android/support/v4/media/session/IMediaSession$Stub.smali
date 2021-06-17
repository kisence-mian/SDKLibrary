.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_addQueueItem:I = 0x29

.field static final TRANSACTION_addQueueItemAt:I = 0x2a

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getRepeatMode:I = 0x25

.field static final TRANSACTION_getShuffleMode:I = 0x2f

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isCaptioningEnabled:I = 0x2d

.field static final TRANSACTION_isShuffleModeEnabledRemoved:I = 0x26

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x21

.field static final TRANSACTION_prepareFromMediaId:I = 0x22

.field static final TRANSACTION_prepareFromSearch:I = 0x23

.field static final TRANSACTION_prepareFromUri:I = 0x24

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_rateWithExtras:I = 0x33

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_removeQueueItem:I = 0x2b

.field static final TRANSACTION_removeQueueItemAt:I = 0x2c

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setCaptioningEnabled:I = 0x2e

.field static final TRANSACTION_setRepeatMode:I = 0x27

.field static final TRANSACTION_setShuffleMode:I = 0x30

.field static final TRANSACTION_setShuffleModeEnabledRemoved:I = 0x28

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_4
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_14

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/session/IMediaSession;

    return-object v1

    .line 34
    :cond_14
    new-instance v1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    const-string v1, "android.support.v4.media.session.IMediaSession"

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_3fa

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 46
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    .line 544
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    .line 547
    sget-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .local v0, "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_23

    .line 550
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :cond_22
    const/4 v0, 0x0

    .line 553
    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 554
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_33

    .line 557
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_32
    const/4 v1, 0x0

    .line 559
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_33
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->rateWithExtras(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    return v2

    .line 592
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleMode(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    return v2

    .line 289
    .end local v0    # "_arg0":I
    :sswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getShuffleMode()I

    move-result v0

    .line 291
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v2

    .line 565
    .end local v0    # "_result":I
    :sswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x1

    .line 568
    .local v0, "_arg0":Z
    :cond_60
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setCaptioningEnabled(Z)V

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    return v2

    .line 265
    .end local v0    # "_arg0":Z
    :sswitch_67
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isCaptioningEnabled()Z

    move-result v0

    .line 267
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return v2

    .line 341
    .end local v0    # "_result":Z
    :sswitch_75
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItemAt(I)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    return v2

    .line 327
    .end local v0    # "_arg0":I
    :sswitch_83
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_95

    .line 330
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .local v0, "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_96

    .line 333
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :cond_95
    const/4 v0, 0x0

    .line 335
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_96
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    return v2

    .line 311
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :sswitch_9d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    .line 314
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_b0

    .line 317
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :cond_af
    const/4 v0, 0x0

    .line 320
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v2

    .line 297
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    .end local v1    # "_arg1":I
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cd

    .line 300
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_ce

    .line 303
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :cond_cd
    const/4 v0, 0x0

    .line 305
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_ce
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    return v2

    .line 583
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :sswitch_d5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_df

    const/4 v0, 0x1

    .line 586
    .local v0, "_arg0":Z
    :cond_df
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleModeEnabledRemoved(Z)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    return v2

    .line 574
    .end local v0    # "_arg0":Z
    :sswitch_e6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setRepeatMode(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v2

    .line 281
    .end local v0    # "_arg0":I
    :sswitch_f4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isShuffleModeEnabledRemoved()Z

    move-result v0

    .line 283
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    return v2

    .line 273
    .end local v0    # "_result":Z
    :sswitch_102
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRepeatMode()I

    move-result v0

    .line 275
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return v2

    .line 389
    .end local v0    # "_result":I
    :sswitch_110
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_122

    .line 392
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_123

    .line 395
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_122
    const/4 v0, 0x0

    .line 398
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_132

    .line 399
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_133

    .line 402
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_132
    const/4 v1, 0x0

    .line 404
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_133
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    return v2

    .line 373
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_13a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_150

    .line 378
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_151

    .line 381
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_150
    const/4 v1, 0x0

    .line 383
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_151
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    return v2

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_158
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16e

    .line 362
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_16f

    .line 365
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_16e
    const/4 v1, 0x0

    .line 367
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_16f
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    return v2

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_176
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepare()V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    return v2

    .line 257
    :sswitch_180
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    move-result v0

    .line 259
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return v2

    .line 243
    .end local v0    # "_result":I
    :sswitch_18e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 245
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v1, :cond_1a1

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a4

    .line 251
    :cond_1a1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    :goto_1a4
    return v2

    .line 229
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_1a5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 231
    .local v1, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v1, :cond_1b8

    .line 233
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-static {v1, p3, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1bb

    .line 237
    :cond_1b8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    :goto_1bb
    return v2

    .line 221
    .end local v1    # "_result":Ljava/lang/CharSequence;
    :sswitch_1bc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    return v2

    .line 207
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_1ca
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    .line 209
    .local v1, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v1, :cond_1dd

    .line 211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v1, p3, v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e0

    .line 215
    :cond_1dd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    :goto_1e0
    return v2

    .line 193
    .end local v1    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_1e1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 195
    .local v1, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v1, :cond_1f4

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v1, p3, v2}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f7

    .line 201
    :cond_1f4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    :goto_1f7
    return v2

    .line 601
    .end local v1    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_1f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20e

    .line 606
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_20f

    .line 609
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_20e
    const/4 v1, 0x0

    .line 611
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_20f
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    return v2

    .line 530
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_216
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_228

    .line 533
    sget-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .local v0, "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_229

    .line 536
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :cond_228
    const/4 v0, 0x0

    .line 538
    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :goto_229
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    return v2

    .line 521
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :sswitch_230
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 524
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    return v2

    .line 514
    .end local v0    # "_arg0":J
    :sswitch_23e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    return v2

    .line 507
    :sswitch_248
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    return v2

    .line 500
    :sswitch_252
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    return v2

    .line 493
    :sswitch_25c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    return v2

    .line 486
    :sswitch_266
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    return v2

    .line 479
    :sswitch_270
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    return v2

    .line 470
    :sswitch_27a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 473
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    return v2

    .line 449
    .end local v0    # "_arg0":J
    :sswitch_288
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29a

    .line 452
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_29b

    .line 455
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_29a
    const/4 v0, 0x0

    .line 458
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_29b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2aa

    .line 459
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2ab

    .line 462
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2aa
    const/4 v1, 0x0

    .line 464
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2ab
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    return v2

    .line 433
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2b2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c8

    .line 438
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2c9

    .line 441
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2c8
    const/4 v1, 0x0

    .line 443
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2c9
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    return v2

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2d0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e6

    .line 422
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2e7

    .line 425
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2e6
    const/4 v1, 0x0

    .line 427
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2e7
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    return v2

    .line 410
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    return v2

    .line 180
    :sswitch_2f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v2

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_30e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v2

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_324
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v1

    .line 155
    .local v1, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v1, :cond_337

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v1, p3, v2}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_33a

    .line 161
    :cond_337
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    :goto_33a
    return v2

    .line 145
    .end local v1    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_33b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    move-result-wide v0

    .line 147
    .local v0, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    return v2

    .line 131
    .end local v0    # "_result":J
    :sswitch_349
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    .local v1, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v1, :cond_35c

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v1, p3, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35f

    .line 139
    :cond_35c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_35f
    return v2

    .line 123
    .end local v1    # "_result":Landroid/app/PendingIntent;
    :sswitch_360
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v2

    .line 115
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_36e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v2

    .line 107
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_37c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result v0

    .line 109
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v2

    .line 98
    .end local v0    # "_result":Z
    :sswitch_38a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v2

    .line 89
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_39c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v2

    .line 74
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_3ae
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c0

    .line 77
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, "_arg0":Landroid/view/KeyEvent;
    goto :goto_3c1

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :cond_3c0
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    :goto_3c1
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 83
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v2

    .line 51
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v1    # "_result":Z
    :sswitch_3cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e2

    .line 56
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_3e3

    .line 59
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3e2
    const/4 v1, 0x0

    .line 62
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_3e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f2

    .line 63
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .local v3, "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    goto :goto_3f3

    .line 66
    .end local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :cond_3f2
    const/4 v3, 0x0

    .line 68
    .restart local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :goto_3f3
    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v2

    :sswitch_data_3fa
    .sparse-switch
        0x1 -> :sswitch_3cc
        0x2 -> :sswitch_3ae
        0x3 -> :sswitch_39c
        0x4 -> :sswitch_38a
        0x5 -> :sswitch_37c
        0x6 -> :sswitch_36e
        0x7 -> :sswitch_360
        0x8 -> :sswitch_349
        0x9 -> :sswitch_33b
        0xa -> :sswitch_324
        0xb -> :sswitch_30e
        0xc -> :sswitch_2f8
        0xd -> :sswitch_2ee
        0xe -> :sswitch_2d0
        0xf -> :sswitch_2b2
        0x10 -> :sswitch_288
        0x11 -> :sswitch_27a
        0x12 -> :sswitch_270
        0x13 -> :sswitch_266
        0x14 -> :sswitch_25c
        0x15 -> :sswitch_252
        0x16 -> :sswitch_248
        0x17 -> :sswitch_23e
        0x18 -> :sswitch_230
        0x19 -> :sswitch_216
        0x1a -> :sswitch_1f8
        0x1b -> :sswitch_1e1
        0x1c -> :sswitch_1ca
        0x1d -> :sswitch_1bc
        0x1e -> :sswitch_1a5
        0x1f -> :sswitch_18e
        0x20 -> :sswitch_180
        0x21 -> :sswitch_176
        0x22 -> :sswitch_158
        0x23 -> :sswitch_13a
        0x24 -> :sswitch_110
        0x25 -> :sswitch_102
        0x26 -> :sswitch_f4
        0x27 -> :sswitch_e6
        0x28 -> :sswitch_d5
        0x29 -> :sswitch_bb
        0x2a -> :sswitch_9d
        0x2b -> :sswitch_83
        0x2c -> :sswitch_75
        0x2d -> :sswitch_67
        0x2e -> :sswitch_56
        0x2f -> :sswitch_48
        0x30 -> :sswitch_3a
        0x33 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
