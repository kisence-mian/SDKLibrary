.class Lcom/ss/android/socialbase/downloader/b/c$a$a;
.super Ljava/lang/Object;
.source "ISqlDownloadCacheAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/b/c;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    .line 653
    return-void
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 976
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 977
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 977
    return-object p1

    .line 979
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 981
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 984
    :cond_45
    const/4 p1, 0x0

    .line 988
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    nop

    .line 991
    return-object p1

    .line 988
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1141
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1144
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1145
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1146
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    return-object p1

    .line 1148
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1150
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1153
    :cond_45
    const/4 p1, 0x0

    .line 1157
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1159
    nop

    .line 1160
    return-object p1

    .line 1157
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1112
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1115
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1117
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1118
    if-nez v2, :cond_3d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1119
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_58

    .line 1130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1119
    return-object p1

    .line 1121
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4f

    .line 1123
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_58

    goto :goto_50

    .line 1126
    :cond_4f
    const/4 p1, 0x0

    .line 1130
    :goto_50
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1132
    nop

    .line 1133
    return-object p1

    .line 1130
    :catchall_58
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
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

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 733
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 736
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 737
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    return-object p1

    .line 739
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 740
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_40

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    nop

    .line 746
    return-object p1

    .line 743
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 744
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

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 667
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 669
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 670
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/b/c;->a()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    return-void

    .line 673
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    nop

    .line 679
    return-void

    .line 676
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(IIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 949
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 955
    if-nez v2, :cond_38

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 956
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIII)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 957
    return-void

    .line 959
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    nop

    .line 965
    return-void

    .line 962
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 963
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

    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 927
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 932
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 933
    if-nez v2, :cond_3c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 934
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIIJ)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    return-void

    .line 937
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catchall_47
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 941
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

    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 906
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 910
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 911
    if-nez v2, :cond_35

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 912
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIJ)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    return-void

    .line 915
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    nop

    .line 921
    return-void

    .line 918
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
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

    .line 1415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1418
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1421
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1422
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1423
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(ILjava/util/List;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1424
    return-void

    .line 1426
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1431
    nop

    .line 1432
    return-void

    .line 1429
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1458
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/b/b;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1460
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1461
    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1462
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    return-void

    .line 1465
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1470
    nop

    .line 1471
    return-void

    .line 1468
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1469
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

    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 858
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    invoke-virtual {p1, v0, v2}, Lcom/ss/android/socialbase/downloader/model/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 862
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 865
    if-nez v2, :cond_39

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 866
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 867
    return-void

    .line 869
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    nop

    .line 875
    return-void

    .line 872
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 686
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 689
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 690
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(I)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_41

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 690
    return p1

    .line 692
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_41

    if-eqz p1, :cond_39

    const/4 v4, 0x1

    .line 696
    :cond_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    nop

    .line 699
    return v4

    .line 696
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
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

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 999
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1000
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 1001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1005
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    :goto_1b
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v5, 0x10

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1008
    if-nez v4, :cond_3a

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1009
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4d

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1009
    return p1

    .line 1011
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4d

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    .line 1015
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    nop

    .line 1018
    return v2

    .line 1015
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 707
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 710
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 711
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_4a

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    return-object p1

    .line 713
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_41

    .line 715
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_4a

    goto :goto_42

    .line 718
    :cond_41
    const/4 p1, 0x0

    .line 722
    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    nop

    .line 725
    return-object p1

    .line 722
    :catchall_4a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1168
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1171
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1172
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1173
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    return-object p1

    .line 1175
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1177
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1180
    :cond_45
    const/4 p1, 0x0

    .line 1184
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    nop

    .line 1187
    return-object p1

    .line 1184
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
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

    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 754
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 757
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 758
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    .line 764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    return-object p1

    .line 760
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 761
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_40

    .line 764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    nop

    .line 767
    return-object p1

    .line 764
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1067
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1069
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1070
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/b/c;->b()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1071
    return-void

    .line 1073
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1076
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
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

    .line 1435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1438
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1441
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1442
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1443
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->b(ILjava/util/List;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    return-void

    .line 1446
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1451
    nop

    .line 1452
    return-void

    .line 1449
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1393
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1395
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    invoke-virtual {p1, v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1399
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1402
    if-nez v2, :cond_39

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1403
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1404
    return-void

    .line 1406
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    nop

    .line 1412
    return-void

    .line 1409
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 881
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 882
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 883
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    invoke-virtual {p1, v0, v2}, Lcom/ss/android/socialbase/downloader/model/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 887
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    :goto_1b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 890
    if-nez v2, :cond_39

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 891
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    return-void

    .line 894
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    nop

    .line 900
    return-void

    .line 897
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1221
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1224
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1225
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1226
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    return-object p1

    .line 1228
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1230
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1233
    :cond_45
    const/4 p1, 0x0

    .line 1237
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1239
    nop

    .line 1240
    return-object p1

    .line 1237
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public c(I)Ljava/util/List;
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

    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 820
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 821
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(I)Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_41

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    return-object p1

    .line 823
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 824
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_41

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    nop

    .line 830
    return-object p1

    .line 827
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
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

    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 775
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 778
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 779
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    return-object p1

    .line 781
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 782
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_40

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    nop

    .line 788
    return-object p1

    .line 785
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
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

    .line 1350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1354
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1356
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1357
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/b/c;->c()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1357
    return v2

    .line 1359
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1363
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1365
    nop

    .line 1366
    return v4

    .line 1363
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1248
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1251
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1252
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1253
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    return-object p1

    .line 1255
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1257
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1260
    :cond_45
    const/4 p1, 0x0

    .line 1264
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1266
    nop

    .line 1267
    return-object p1

    .line 1264
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
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

    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 799
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 800
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-object p1

    .line 802
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 803
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_40

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    nop

    .line 809
    return-object p1

    .line 806
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public d(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 837
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 840
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 841
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void

    .line 844
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 849
    nop

    .line 850
    return-void

    .line 847
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public d()Z
    .registers 6
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

    .line 1374
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1375
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1376
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1377
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/b/c;->d()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    return v2

    .line 1379
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1383
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1385
    nop

    .line 1386
    return v4

    .line 1383
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1275
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1278
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1279
    if-nez v2, :cond_33

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1280
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->e(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    return-object p1

    .line 1282
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_45

    .line 1284
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    goto :goto_46

    .line 1287
    :cond_45
    const/4 p1, 0x0

    .line 1291
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    nop

    .line 1294
    return-object p1

    .line 1291
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public e(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1026
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1029
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1030
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->e(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    return p1

    .line 1032
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1036
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1038
    nop

    .line 1039
    return v4

    .line 1036
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public f(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1050
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1051
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->f(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    return p1

    .line 1053
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 1057
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    nop

    .line 1060
    return v4

    .line 1057
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1086
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1089
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1090
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1090
    return-object p1

    .line 1092
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 1094
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 1097
    :cond_42
    const/4 p1, 0x0

    .line 1101
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    nop

    .line 1104
    return-object p1

    .line 1101
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
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

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1195
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1198
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1199
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 1210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1199
    return-object p1

    .line 1201
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 1203
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 1206
    :cond_42
    const/4 p1, 0x0

    .line 1210
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    nop

    .line 1213
    return-object p1

    .line 1210
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1302
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1305
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1306
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 1317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1306
    return-object p1

    .line 1308
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 1310
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 1313
    :cond_42
    const/4 p1, 0x0

    .line 1317
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    nop

    .line 1320
    return-object p1

    .line 1317
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1328
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/c$a$a;->b:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1331
    if-nez v2, :cond_30

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1332
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/c$a;->e()Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/b/c;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1332
    return-object p1

    .line 1334
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 1336
    sget-object p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 1339
    :cond_42
    const/4 p1, 0x0

    .line 1343
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    nop

    .line 1346
    return-object p1

    .line 1343
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
