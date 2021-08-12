.class Lcom/ss/android/socialbase/downloader/b/b$a$a;
.super Ljava/lang/Object;
.source "ISqlCacheLoadCompleteCallbackAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/socialbase/downloader/b/b;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/b$a$a;->b:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    :try_start_8
    const-string v2, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 98
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 99
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/b$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 100
    if-nez v2, :cond_31

    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/b$a;->a()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/b/b$a;->a()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ss/android/socialbase/downloader/b/b;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    return-void

    .line 104
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/b$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
