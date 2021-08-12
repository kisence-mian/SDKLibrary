.class public abstract Lcom/ss/android/socialbase/downloader/b/b$a;
.super Landroid/os/Binder;
.source "ISqlCacheLoadCompleteCallbackAidl.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/b/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl"

    invoke-virtual {p0, p0, v0}, Lcom/ss/android/socialbase/downloader/b/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/b/b;
    .registers 1

    .line 122
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b$a$a;->a:Lcom/ss/android/socialbase/downloader/b/b;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/b;
    .registers 3

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_4
    const-string v0, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/b/b;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Lcom/ss/android/socialbase/downloader/b/b;

    return-object v0

    .line 42
    :cond_13
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/b$a$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    nop

    .line 51
    const/4 v0, 0x1

    const-string v1, "com.ss.android.socialbase.downloader.db.ISqlCacheLoadCompleteCallbackAidl"

    sparse-switch p1, :sswitch_data_2a

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v0

    .line 60
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p4

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p4, p1}, Lcom/ss/android/socialbase/downloader/b/b$a;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
