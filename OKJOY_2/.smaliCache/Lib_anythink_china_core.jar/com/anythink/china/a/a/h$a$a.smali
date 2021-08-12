.class public final Lcom/anythink/china/a/a/h$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/anythink/china/a/a/h$a$a;->a:Landroid/os/IBinder;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 38
    nop

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 43
    :try_start_9
    const-string v2, "com.heytap.openid.IOpenID"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/anythink/china/a/a/h$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_2e
    .catchall {:try_start_9 .. :try_end_25} :catchall_2c

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    goto :goto_39

    .line 53
    :catchall_2c
    move-exception p1

    goto :goto_3a

    .line 51
    :catch_2e
    move-exception p1

    :try_start_2f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    const/4 p1, 0x0

    .line 57
    :goto_39
    return-object p1

    .line 53
    :goto_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/anythink/china/a/a/h$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
