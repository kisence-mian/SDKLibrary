.class public abstract Lcom/ss/android/socialbase/downloader/b/c$a;
.super Landroid/os/Binder;
.source "ISqlDownloadCacheAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/b/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/b/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/c;
    .registers 3

    .line 158
    if-nez p0, :cond_4

    .line 159
    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v1, :cond_13

    .line 163
    check-cast v0, Lcom/ss/android/socialbase/downloader/b/c;

    return-object v0

    .line 165
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/c$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static e()Lcom/ss/android/socialbase/downloader/b/c;
    .registers 1

    .line 1517
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->a:Lcom/ss/android/socialbase/downloader/b/c;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 169
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    nop

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    sparse-switch p1, :sswitch_data_33e

    .line 643
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 178
    :sswitch_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v2

    .line 634
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/b/b$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object p1

    .line 637
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    return v2

    .line 623
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 627
    sget-object p4, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(ILjava/util/List;)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    return v2

    .line 612
    :sswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 616
    sget-object p4, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(ILjava/util/List;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    return v2

    .line 598
    :sswitch_4c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5f

    .line 601
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_60

    .line 604
    :cond_5f
    nop

    .line 606
    :goto_60
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    return v2

    .line 590
    :sswitch_67
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;->d()Z

    move-result p1

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    return v2

    .line 582
    :sswitch_75
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;->c()Z

    move-result p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    return v2

    .line 566
    :sswitch_83
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz p1, :cond_9a

    .line 572
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9d

    .line 576
    :cond_9a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    :goto_9d
    return v2

    .line 550
    :sswitch_9e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 553
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz p1, :cond_b5

    .line 556
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b8

    .line 560
    :cond_b5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    :goto_b8
    return v2

    .line 532
    :sswitch_b9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 537
    invoke-virtual {p0, p1, v3, v4}, Lcom/ss/android/socialbase/downloader/b/c$a;->e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz p1, :cond_d4

    .line 540
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d7

    .line 544
    :cond_d4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    :goto_d7
    return v2

    .line 514
    :sswitch_d8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 519
    invoke-virtual {p0, p1, v3, v4}, Lcom/ss/android/socialbase/downloader/b/c$a;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz p1, :cond_f3

    .line 522
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f6

    .line 526
    :cond_f3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    :goto_f6
    return v2

    .line 496
    :sswitch_f7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 501
    invoke-virtual {p0, p1, v3, v4}, Lcom/ss/android/socialbase/downloader/b/c$a;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    if-eqz p1, :cond_112

    .line 504
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_115

    .line 508
    :cond_112
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    :goto_115
    return v2

    .line 480
    :sswitch_116
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 483
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz p1, :cond_12d

    .line 486
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_130

    .line 490
    :cond_12d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    :goto_130
    return v2

    .line 462
    :sswitch_131
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 467
    invoke-virtual {p0, p1, v3, v4}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz p1, :cond_14c

    .line 470
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14f

    .line 474
    :cond_14c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    :goto_14f
    return v2

    .line 444
    :sswitch_150
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 449
    invoke-virtual {p0, p1, v3, v4}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz p1, :cond_16b

    .line 452
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16e

    .line 456
    :cond_16b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    :goto_16e
    return v2

    .line 422
    :sswitch_16f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 431
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz p1, :cond_193

    .line 434
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_196

    .line 438
    :cond_193
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    :goto_196
    return v2

    .line 406
    :sswitch_197
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz p1, :cond_1ae

    .line 412
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b1

    .line 416
    :cond_1ae
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    :goto_1b1
    return v2

    .line 399
    :sswitch_1b2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;->b()V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    return v2

    .line 389
    :sswitch_1bc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 392
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->f(I)Z

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    return v2

    .line 379
    :sswitch_1ce
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 382
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->e(I)Z

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    return v2

    .line 364
    :sswitch_1e0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f3

    .line 367
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_1f4

    .line 370
    :cond_1f3
    nop

    .line 372
    :goto_1f4
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    return v2

    .line 346
    :sswitch_1ff
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz p1, :cond_21a

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21d

    .line 358
    :cond_21a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_21d
    return v2

    .line 331
    :sswitch_21e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 340
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(IIII)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    return v2

    .line 316
    :sswitch_238
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 325
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(IIIJ)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    return v2

    .line 303
    :sswitch_253
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 310
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(IIJ)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    return v2

    .line 289
    :sswitch_269
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27c

    .line 292
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    goto :goto_27d

    .line 295
    :cond_27c
    nop

    .line 297
    :goto_27d
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    return v2

    .line 275
    :sswitch_284
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_297

    .line 278
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    goto :goto_298

    .line 281
    :cond_297
    nop

    .line 283
    :goto_298
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v2

    .line 266
    :sswitch_29f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->d(I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    return v2

    .line 256
    :sswitch_2ad
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->c(I)Ljava/util/List;

    move-result-object p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 262
    return v2

    .line 246
    :sswitch_2bf
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 252
    return v2

    .line 236
    :sswitch_2d1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 242
    return v2

    .line 226
    :sswitch_2e3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 232
    return v2

    .line 216
    :sswitch_2f5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    return v2

    .line 200
    :sswitch_307
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz p1, :cond_31e

    .line 206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {p1, p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_321

    .line 210
    :cond_31e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    :goto_321
    return v2

    .line 190
    :sswitch_322
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(I)Z

    move-result p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return v2

    .line 183
    :sswitch_334
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/b/c$a;->a()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v2

    :sswitch_data_33e
    .sparse-switch
        0x1 -> :sswitch_334
        0x2 -> :sswitch_322
        0x3 -> :sswitch_307
        0x4 -> :sswitch_2f5
        0x5 -> :sswitch_2e3
        0x6 -> :sswitch_2d1
        0x7 -> :sswitch_2bf
        0x8 -> :sswitch_2ad
        0x9 -> :sswitch_29f
        0xa -> :sswitch_284
        0xb -> :sswitch_269
        0xc -> :sswitch_253
        0xd -> :sswitch_238
        0xe -> :sswitch_21e
        0xf -> :sswitch_1ff
        0x10 -> :sswitch_1e0
        0x11 -> :sswitch_1ce
        0x12 -> :sswitch_1bc
        0x13 -> :sswitch_1b2
        0x14 -> :sswitch_197
        0x15 -> :sswitch_16f
        0x16 -> :sswitch_150
        0x17 -> :sswitch_131
        0x18 -> :sswitch_116
        0x19 -> :sswitch_f7
        0x1a -> :sswitch_d8
        0x1b -> :sswitch_b9
        0x1c -> :sswitch_9e
        0x1d -> :sswitch_83
        0x1e -> :sswitch_75
        0x1f -> :sswitch_67
        0x20 -> :sswitch_4c
        0x21 -> :sswitch_38
        0x22 -> :sswitch_24
        0x23 -> :sswitch_12
        0x5f4e5446 -> :sswitch_e
    .end sparse-switch
.end method
