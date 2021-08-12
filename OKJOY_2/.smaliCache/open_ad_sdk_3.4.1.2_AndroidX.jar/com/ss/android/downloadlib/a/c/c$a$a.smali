.class Lcom/ss/android/downloadlib/a/c/c$a$a;
.super Ljava/lang/Object;
.source "IAidlService.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/c/c$a;
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 76
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "r"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    :cond_24
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/c/c$a$a;->a:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    :try_start_8
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1, v0, v3}, Lcom/ss/android/downloadlib/a/c/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 96
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_1d
    if-eqz p2, :cond_24

    invoke-interface {p2}, Lcom/ss/android/downloadlib/a/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 99
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/c/c$a$a;->a:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_38

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/c$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
