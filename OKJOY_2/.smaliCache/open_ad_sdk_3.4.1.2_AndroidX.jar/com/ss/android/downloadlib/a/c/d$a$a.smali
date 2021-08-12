.class Lcom/ss/android/downloadlib/a/c/d$a$a;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/c/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 72
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/c/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    :cond_24
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/c/d$a$a;->a:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadlib/a/c/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    :try_start_8
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/downloadlib/a/c/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 93
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_1d
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/c/d$a$a;->a:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
