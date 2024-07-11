.class Lcom/ss/android/socialbase/downloader/downloader/h$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/downloader/h;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    .line 861
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1142
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1146
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1147
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_42

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    return p1

    .line 1149
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    nop

    .line 1156
    return p1

    .line 1153
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1100
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1103
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return-object p1

    .line 1106
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1107
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    nop

    .line 1113
    return-object p1

    .line 1110
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 992
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 994
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 995
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 996
    return-void

    .line 998
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1003
    nop

    .line 1004
    return-void

    .line 1001
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 894
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 897
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 898
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    return-void

    .line 901
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 906
    nop

    .line 907
    return-void

    .line 904
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1883
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1887
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1888
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1889
    return-void

    .line 1891
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1894
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1763
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1769
    if-nez v2, :cond_38

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1770
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIII)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    return-void

    .line 1773
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1778
    nop

    .line 1779
    return-void

    .line 1776
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IIIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1741
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1746
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1747
    if-nez v2, :cond_3c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1748
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIIJ)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    return-void

    .line 1751
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1756
    nop

    .line 1757
    return-void

    .line 1754
    :catchall_47
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IIJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1720
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1724
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1725
    if-nez v2, :cond_35

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1726
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIJ)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    return-void

    .line 1729
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    nop

    .line 1735
    return-void

    .line 1732
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1350
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    if-eqz p3, :cond_1a

    invoke-interface {p3}, Lcom/ss/android/socialbase/downloader/depend/i;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1354
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    const/4 v2, 0x0

    if-eqz p5, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1357
    if-nez v2, :cond_4d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 1358
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_58

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    return-void

    .line 1361
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_58

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1366
    nop

    .line 1367
    return-void

    .line 1364
    :catchall_58
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1396
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1397
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    move v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    if-eqz p3, :cond_1c

    invoke-interface {p3}, Lcom/ss/android/socialbase/downloader/depend/i;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1400
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p5, :cond_2a

    move v6, v3

    goto :goto_2b

    :cond_2a
    move v6, v4

    :goto_2b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    if-eqz p6, :cond_31

    goto :goto_32

    :cond_31
    move v3, v4

    :goto_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_69

    .line 1403
    move-object v10, p0

    :try_start_36
    iget-object v3, v10, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v6, 0x1a

    invoke-interface {v3, v6, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1404
    if-nez v3, :cond_5c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 1405
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_67

    .line 1411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    return-void

    .line 1408
    :cond_5c
    :try_start_5c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    .line 1411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1411
    :catchall_67
    move-exception v0

    goto :goto_6b

    :catchall_69
    move-exception v0

    move-object v10, p0

    :goto_6b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2006
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2009
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2010
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2011
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IJ)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2012
    return-void

    .line 2014
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2019
    nop

    .line 2020
    return-void

    .line 2017
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    :try_start_4
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 1449
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    invoke-virtual {p2, v0, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 1453
    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    :goto_1a
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1456
    if-nez v1, :cond_36

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1457
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILandroid/app/Notification;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 1462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    return-void

    .line 1462
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1462
    :catchall_3b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/aa;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1945
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/depend/aa;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1948
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1949
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1950
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILcom/ss/android/socialbase/downloader/depend/aa;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1951
    return-void

    .line 1953
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    nop

    .line 1959
    return-void

    .line 1956
    :catchall_45
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1824
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1827
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1828
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1829
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILjava/util/List;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    return-void

    .line 1832
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1837
    nop

    .line 1838
    return-void

    .line 1835
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 913
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 917
    if-nez v2, :cond_36

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 918
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IZ)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 919
    return-void

    .line 921
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    nop

    .line 927
    return-void

    .line 924
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1864
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/depend/ak;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1866
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1867
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1868
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    return-void

    .line 1871
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    nop

    .line 1877
    return-void

    .line 1874
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 875
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 876
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/model/a;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 877
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 878
    if-nez v2, :cond_36

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 879
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 880
    return-void

    .line 882
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    nop

    .line 888
    return-void

    .line 885
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1628
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1629
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1630
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    invoke-virtual {p1, v0, v2}, Lcom/ss/android/socialbase/downloader/model/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1634
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1637
    if-nez v2, :cond_39

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1638
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1639
    return-void

    .line 1641
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    nop

    .line 1647
    return-void

    .line 1644
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1253
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1255
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1256
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1257
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1258
    return-void

    .line 1260
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    nop

    .line 1266
    return-void

    .line 1263
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1469
    :try_start_4
    const-string v1, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1470
    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1472
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1473
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Z)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    return-void

    .line 1478
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    nop

    .line 1480
    return-void

    .line 1478
    :catchall_33
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1421
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1422
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 1423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1427
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    :goto_1b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v5, 0x1b

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1430
    if-nez v4, :cond_3a

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1431
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4d

    .line 1437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1431
    return p1

    .line 1433
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4d

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    .line 1437
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    nop

    .line 1440
    return v2

    .line 1437
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1164
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1167
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1168
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1169
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    return-object p1

    .line 1171
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1173
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1176
    :cond_45
    const/4 p1, 0x0

    .line 1180
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1182
    nop

    .line 1183
    return-object p1

    .line 1180
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1191
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1194
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1195
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    return-object p1

    .line 1197
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1198
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1203
    nop

    .line 1204
    return-object p1

    .line 1201
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1373
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    if-eqz p3, :cond_1a

    invoke-interface {p3}, Lcom/ss/android/socialbase/downloader/depend/i;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1377
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    const/4 v2, 0x0

    if-eqz p5, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1380
    if-nez v2, :cond_4d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 1381
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_58

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    return-void

    .line 1384
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_58

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1389
    nop

    .line 1390
    return-void

    .line 1387
    :catchall_58
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1844
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1847
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1848
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1849
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(ILjava/util/List;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1850
    return-void

    .line 1852
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    nop

    .line 1858
    return-void

    .line 1855
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1291
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1295
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1296
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1297
    return-void

    .line 1299
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1302
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1272
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1274
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1275
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1276
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    return-void

    .line 1279
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1282
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1487
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1488
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1489
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1490
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1490
    return v2

    .line 1492
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1496
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    nop

    .line 1499
    return v4

    .line 1496
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public b(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 934
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 937
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 938
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(I)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_41

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    return p1

    .line 940
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_41

    if-eqz p1, :cond_39

    const/4 v4, 0x1

    .line 944
    :cond_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 946
    nop

    .line 947
    return v4

    .line 944
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1654
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 1656
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1660
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    :goto_1b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v5, 0x26

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1663
    if-nez v4, :cond_3a

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1664
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4d

    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return p1

    .line 1666
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4d

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    .line 1670
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1672
    nop

    .line 1673
    return v2

    .line 1670
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1212
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1215
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1216
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1216
    return-object p1

    .line 1218
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1219
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    nop

    .line 1225
    return-object p1

    .line 1222
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 954
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 957
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 958
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->c(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    return-void

    .line 961
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    nop

    .line 967
    return-void

    .line 964
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1311
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1315
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1316
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->c(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return-void

    .line 1319
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1324
    nop

    .line 1325
    return-void

    .line 1322
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1568
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1570
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1571
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->c()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    return v2

    .line 1573
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1577
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1579
    nop

    .line 1580
    return v4

    .line 1577
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1233
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1236
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1237
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1237
    return-object p1

    .line 1239
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1240
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    nop

    .line 1246
    return-object p1

    .line 1243
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public d()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1806
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1807
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1808
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1809
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->d()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1810
    return-void

    .line 1812
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    nop

    .line 1818
    return-void

    .line 1815
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public d(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 973
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 976
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 977
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 978
    return-void

    .line 980
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public d(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1587
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1591
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1592
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1593
    return-void

    .line 1595
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return-void

    .line 1598
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public e(I)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1011
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1014
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1015
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->e(I)J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3f

    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1015
    return-wide v2

    .line 1017
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1023
    nop

    .line 1024
    return-wide v2

    .line 1021
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1507
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1509
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1510
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1511
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    return-object p1

    .line 1513
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1514
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1519
    nop

    .line 1520
    return-object p1

    .line 1517
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public e()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1987
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1989
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1990
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/h;->e()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    return v2

    .line 1992
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1996
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1998
    nop

    .line 1999
    return v4

    .line 1996
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public f(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1032
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1035
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1036
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->f(I)I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3f

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1036
    return p1

    .line 1038
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    nop

    .line 1045
    return p1

    .line 1042
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public g(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1053
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1056
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1057
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->g(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    return p1

    .line 1059
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1063
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1065
    nop

    .line 1066
    return v4

    .line 1063
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1074
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1077
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1078
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    return-object p1

    .line 1080
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 1082
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 1085
    :cond_42
    const/4 p1, 0x0

    .line 1089
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    nop

    .line 1092
    return-object p1

    .line 1089
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public i(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1121
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1124
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1125
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->i(I)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1125
    return-object p1

    .line 1127
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1128
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    nop

    .line 1134
    return-object p1

    .line 1131
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public j(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1331
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1334
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1335
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->j(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1336
    return-void

    .line 1338
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1343
    nop

    .line 1344
    return-void

    .line 1341
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public k(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1528
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1531
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1532
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->k(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    return p1

    .line 1534
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1538
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1540
    nop

    .line 1541
    return v4

    .line 1538
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public l(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1548
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1551
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1552
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->l(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1553
    return-void

    .line 1555
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public m(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1608
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1611
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1612
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->m(I)I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3f

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1612
    return p1

    .line 1614
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    nop

    .line 1621
    return p1

    .line 1618
    :catchall_3f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public n(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1681
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1684
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1685
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->n(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    return p1

    .line 1687
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1691
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1693
    nop

    .line 1694
    return v4

    .line 1691
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public o(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1701
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1704
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1705
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->o(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    return-void

    .line 1708
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    nop

    .line 1714
    return-void

    .line 1711
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public p(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1786
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1789
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1790
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->p(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1790
    return p1

    .line 1792
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1796
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    nop

    .line 1799
    return v4

    .line 1796
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1907
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1908
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->q(I)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    return-object p1

    .line 1910
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/aa$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_43

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    nop

    .line 1917
    return-object p1

    .line 1914
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1925
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1928
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1929
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->r(I)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    return-object p1

    .line 1931
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1932
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/ag$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_43

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    nop

    .line 1938
    return-object p1

    .line 1935
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/g;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1966
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/h$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1969
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1970
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->f()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->s(I)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1970
    return-object p1

    .line 1972
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1973
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/depend/g$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_43

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1978
    nop

    .line 1979
    return-object p1

    .line 1976
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
