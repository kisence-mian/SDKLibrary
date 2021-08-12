.class Lcom/ss/android/socialbase/downloader/depend/g$a$a;
.super Ljava/lang/Object;
.source "IDownloadAidlFileProvider.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/g;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/g$a$a;->b:Landroid/os/IBinder;

    .line 87
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/depend/g$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 106
    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/g$a;->a()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/g$a;->a()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4d

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-object p1

    .line 109
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_44

    .line 111
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4d

    goto :goto_45

    .line 114
    :cond_44
    const/4 p1, 0x0

    .line 118
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-object p1

    .line 118
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/g$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
