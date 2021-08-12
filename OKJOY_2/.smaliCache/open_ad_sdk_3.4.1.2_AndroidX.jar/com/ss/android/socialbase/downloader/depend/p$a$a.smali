.class Lcom/ss/android/socialbase/downloader/depend/p$a$a;
.super Ljava/lang/Object;
.source "IDownloadDiskSpaceAidlHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/depend/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/depend/p;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 98
    :try_start_8
    const-string v0, "com.ss.android.socialbase.downloader.depend.IDownloadDiskSpaceAidlHandler"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    if-eqz p5, :cond_1a

    invoke-interface {p5}, Lcom/ss/android/socialbase/downloader/depend/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-interface {v0, v8, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 103
    if-nez v0, :cond_40

    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/depend/p$a;->a()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/depend/p;->a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z

    move-result v0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_52

    .line 110
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    return v0

    .line 106
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_52

    if-eqz v0, :cond_4a

    move v3, v8

    .line 110
    :cond_4a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    nop

    .line 113
    return v3

    .line 110
    :catchall_52
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/depend/p$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
