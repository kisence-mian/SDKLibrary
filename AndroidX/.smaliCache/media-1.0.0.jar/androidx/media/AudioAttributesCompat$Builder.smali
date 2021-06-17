.class public Landroidx/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:I

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 388
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 389
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 401
    return-void
.end method

.method public constructor <init>(Landroidx/media/AudioAttributesCompat;)V
    .registers 3
    .param p1, "aa"    # Landroidx/media/AudioAttributesCompat;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 388
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 389
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 409
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 410
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 411
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 412
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getRawLegacyStreamType()I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 413
    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesCompat;
    .registers 6

    .line 423
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_36

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 424
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 426
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 427
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 428
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 429
    .local v0, "api21Builder":Landroid/media/AudioAttributes$Builder;
    iget v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 431
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 433
    :cond_29
    new-instance v1, Landroidx/media/AudioAttributesImplApi21;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iget v3, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    invoke-direct {v1, v2, v3}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    move-object v0, v1

    .line 434
    .local v0, "impl":Landroidx/media/AudioAttributesImpl;
    goto :goto_43

    .line 435
    .end local v0    # "impl":Landroidx/media/AudioAttributesImpl;
    :cond_36
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    iget v2, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    iget v3, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    iget v4, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    .line 438
    .restart local v0    # "impl":Landroidx/media/AudioAttributesImpl;
    :goto_43
    new-instance v1, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v1, v0}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v1
.end method

.method public setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3
    .param p1, "contentType"    # I

    .line 509
    packed-switch p1, :pswitch_data_c

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_a

    .line 515
    :pswitch_7
    iput p1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 516
    nop

    .line 520
    :goto_a
    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 533
    and-int/lit16 p1, p1, 0x3ff

    .line 534
    iget v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 535
    return-object p0
.end method

.method setInternalLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 5
    .param p1, "streamType"    # I

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_56

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributesCompat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributesCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 594
    :pswitch_24
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 595
    goto :goto_4e

    .line 591
    :pswitch_27
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 592
    goto :goto_4e

    .line 588
    :pswitch_2a
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 589
    goto :goto_4e

    .line 566
    :pswitch_2d
    iget v2, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    goto :goto_48

    .line 584
    :pswitch_33
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 585
    iget v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 586
    goto :goto_4e

    .line 581
    :pswitch_3b
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 582
    goto :goto_4e

    .line 578
    :pswitch_3e
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 579
    goto :goto_4e

    .line 575
    :pswitch_41
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 576
    goto :goto_4e

    .line 572
    :pswitch_45
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 573
    goto :goto_4e

    .line 569
    :goto_48
    :pswitch_48
    iput v1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 570
    goto :goto_4e

    .line 563
    :pswitch_4b
    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 564
    nop

    .line 599
    :goto_4e
    invoke-static {p1}, Landroidx/media/AudioAttributesCompat;->usageForStreamType(I)I

    move-result v0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 600
    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_33
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 4
    .param p1, "streamType"    # I

    .line 546
    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    .line 551
    iput p1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mLegacyStream:I

    .line 552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 553
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesCompat$Builder;->setInternalLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    return-object v0

    .line 556
    :cond_11
    return-object p0

    .line 547
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;
    .registers 4
    .param p1, "usage"    # I

    .line 464
    packed-switch p1, :pswitch_data_1e

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1c

    .line 484
    :pswitch_7
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_14

    .line 485
    iput p1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_1c

    .line 487
    :cond_14
    const/16 v0, 0xc

    iput v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 489
    goto :goto_1c

    .line 481
    :pswitch_19
    iput p1, p0, Landroidx/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 482
    nop

    .line 493
    :goto_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_7
    .end packed-switch
.end method
