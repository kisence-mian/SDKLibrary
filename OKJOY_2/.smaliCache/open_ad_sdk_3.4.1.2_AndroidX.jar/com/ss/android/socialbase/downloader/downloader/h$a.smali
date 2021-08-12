.class public abstract Lcom/ss/android/socialbase/downloader/downloader/h$a;
.super Landroid/os/Binder;
.source "IDownloadAidlService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/downloader/h$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 211
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 212
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 3

    .line 220
    if-nez p0, :cond_4

    .line 221
    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v1, :cond_13

    .line 225
    check-cast v0, Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0

    .line 227
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static f()Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 1

    .line 2086
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->a:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 231
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    nop

    .line 236
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const-string v3, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    sparse-switch p1, :sswitch_data_48a

    .line 851
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 240
    :sswitch_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v7

    .line 840
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 845
    invoke-virtual {p0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IJ)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    return v7

    .line 832
    :sswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->e()Z

    move-result v0

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    return v7

    .line 822
    :sswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 825
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->s(I)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v0

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v0, :cond_46

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/g;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_46
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 828
    return v7

    .line 811
    :sswitch_4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v0

    .line 816
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(ILcom/ss/android/socialbase/downloader/depend/aa;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    return v7

    .line 801
    :sswitch_60
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 804
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->r(I)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v0

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    if-eqz v0, :cond_74

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/ag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 807
    return v7

    .line 791
    :sswitch_78
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 794
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->q(I)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v0

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    if-eqz v0, :cond_8c

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/aa;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_8c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 797
    return v7

    .line 780
    :sswitch_90
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 785
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(II)V

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    return v7

    .line 771
    :sswitch_a2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/depend/ak$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/ak;

    move-result-object v0

    .line 774
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    return v7

    .line 760
    :sswitch_b4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 764
    sget-object v2, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 765
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(ILjava/util/List;)V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    return v7

    .line 749
    :sswitch_c8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    sget-object v2, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 754
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(ILjava/util/List;)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    return v7

    .line 742
    :sswitch_dc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->d()V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    return v7

    .line 732
    :sswitch_e6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->p(I)Z

    move-result v0

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    return v7

    .line 717
    :sswitch_f8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IIII)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    return v7

    .line 702
    :sswitch_112
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 711
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IIIJ)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    return v7

    .line 689
    :sswitch_12d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 696
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IIJ)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    return v7

    .line 680
    :sswitch_143
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 683
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->o(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    return v7

    .line 670
    :sswitch_151
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->n(I)Z

    move-result v0

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    return v7

    .line 655
    :sswitch_163
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_176

    .line 658
    sget-object v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_177

    .line 661
    :cond_176
    nop

    .line 663
    :goto_177
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    return v7

    .line 641
    :sswitch_182
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_195

    .line 644
    sget-object v1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/b;

    goto :goto_196

    .line 647
    :cond_195
    nop

    .line 649
    :goto_196
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    return v7

    .line 631
    :sswitch_19d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->m(I)I

    move-result v0

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    return v7

    .line 620
    :sswitch_1af
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bd

    move v2, v7

    .line 625
    :cond_1bd
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->d(IZ)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    return v7

    .line 612
    :sswitch_1c4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->c()Z

    move-result v0

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    return v7

    .line 603
    :sswitch_1d2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->l(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    return v7

    .line 593
    :sswitch_1e0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->k(I)Z

    move-result v0

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    return v7

    .line 583
    :sswitch_1f2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 589
    return v7

    .line 575
    :sswitch_204
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b()Z

    move-result v0

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    return v7

    .line 567
    :sswitch_212
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21c

    move v2, v7

    .line 570
    :cond_21c
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Z)V

    .line 571
    return v7

    .line 552
    :sswitch_220
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_237

    .line 557
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    goto :goto_238

    .line 560
    :cond_237
    nop

    .line 562
    :goto_238
    invoke-virtual {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(ILandroid/app/Notification;)V

    .line 563
    return v7

    .line 537
    :sswitch_23c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24f

    .line 540
    sget-object v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_250

    .line 543
    :cond_24f
    nop

    .line 545
    :goto_250
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    return v7

    .line 518
    :sswitch_25b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27a

    move v6, v7

    goto :goto_27b

    :cond_27a
    move v6, v2

    .line 530
    :goto_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_283

    move v8, v7

    goto :goto_284

    :cond_283
    move v8, v2

    .line 531
    :goto_284
    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    return v7

    .line 501
    :sswitch_291
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b0

    move v6, v7

    goto :goto_2b1

    :cond_2b0
    move v6, v2

    .line 512
    :goto_2b1
    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    return v7

    .line 484
    :sswitch_2bd
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/depend/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2dc

    move v6, v7

    goto :goto_2dd

    :cond_2dc
    move v6, v2

    .line 495
    :goto_2dd
    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v7

    .line 475
    :sswitch_2e9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->j(I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    return v7

    .line 464
    :sswitch_2f7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_305

    move v2, v7

    .line 469
    :cond_305
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->c(IZ)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    return v7

    .line 453
    :sswitch_30c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31a

    move v2, v7

    .line 458
    :cond_31a
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(IZ)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    return v7

    .line 444
    :sswitch_321
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(Ljava/util/List;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    return v7

    .line 435
    :sswitch_32f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Ljava/util/List;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    return v7

    .line 425
    :sswitch_33d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 431
    return v7

    .line 415
    :sswitch_34f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 421
    return v7

    .line 405
    :sswitch_361
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 411
    return v7

    .line 387
    :sswitch_373
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v0, :cond_38e

    .line 395
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {v0, p3, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_391

    .line 399
    :cond_38e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    :goto_391
    return v7

    .line 375
    :sswitch_392
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return v7

    .line 365
    :sswitch_3a8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->i(I)Ljava/util/List;

    move-result-object v0

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 371
    return v7

    .line 355
    :sswitch_3ba
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 361
    return v7

    .line 339
    :sswitch_3cc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v0, :cond_3e3

    .line 345
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    invoke-virtual {v0, p3, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3e6

    .line 349
    :cond_3e3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    :goto_3e6
    return v7

    .line 329
    :sswitch_3e7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->g(I)Z

    move-result v0

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return v7

    .line 319
    :sswitch_3f9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f(I)I

    move-result v0

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return v7

    .line 309
    :sswitch_40b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->e(I)J

    move-result-wide v0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    return v7

    .line 302
    :sswitch_41d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a()V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    return v7

    .line 293
    :sswitch_427
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->d(I)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    return v7

    .line 284
    :sswitch_435
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->c(I)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    return v7

    .line 274
    :sswitch_443
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->b(I)Z

    move-result v0

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return v7

    .line 263
    :sswitch_455
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_463

    move v2, v7

    .line 268
    :cond_463
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(IZ)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    return v7

    .line 254
    :sswitch_46a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v7

    .line 245
    :sswitch_478
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/model/a$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v0

    .line 248
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Lcom/ss/android/socialbase/downloader/model/a;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    return v7

    :sswitch_data_48a
    .sparse-switch
        0x1 -> :sswitch_478
        0x2 -> :sswitch_46a
        0x3 -> :sswitch_455
        0x4 -> :sswitch_443
        0x5 -> :sswitch_435
        0x6 -> :sswitch_427
        0x7 -> :sswitch_41d
        0x8 -> :sswitch_40b
        0x9 -> :sswitch_3f9
        0xa -> :sswitch_3e7
        0xb -> :sswitch_3cc
        0xc -> :sswitch_3ba
        0xd -> :sswitch_3a8
        0xe -> :sswitch_392
        0xf -> :sswitch_373
        0x10 -> :sswitch_361
        0x11 -> :sswitch_34f
        0x12 -> :sswitch_33d
        0x13 -> :sswitch_32f
        0x14 -> :sswitch_321
        0x15 -> :sswitch_30c
        0x16 -> :sswitch_2f7
        0x17 -> :sswitch_2e9
        0x18 -> :sswitch_2bd
        0x19 -> :sswitch_291
        0x1a -> :sswitch_25b
        0x1b -> :sswitch_23c
        0x1c -> :sswitch_220
        0x1d -> :sswitch_212
        0x1e -> :sswitch_204
        0x1f -> :sswitch_1f2
        0x20 -> :sswitch_1e0
        0x21 -> :sswitch_1d2
        0x22 -> :sswitch_1c4
        0x23 -> :sswitch_1af
        0x24 -> :sswitch_19d
        0x25 -> :sswitch_182
        0x26 -> :sswitch_163
        0x27 -> :sswitch_151
        0x28 -> :sswitch_143
        0x29 -> :sswitch_12d
        0x2a -> :sswitch_112
        0x2b -> :sswitch_f8
        0x2c -> :sswitch_e6
        0x2d -> :sswitch_dc
        0x2e -> :sswitch_c8
        0x2f -> :sswitch_b4
        0x30 -> :sswitch_a2
        0x31 -> :sswitch_90
        0x32 -> :sswitch_78
        0x33 -> :sswitch_60
        0x34 -> :sswitch_4a
        0x35 -> :sswitch_32
        0x36 -> :sswitch_24
        0x37 -> :sswitch_12
        0x5f4e5446 -> :sswitch_e
    .end sparse-switch
.end method
