.class final Lcom/anythink/china/a/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/anythink/china/a/c$a$a;->a:Landroid/os/IBinder;

    .line 63
    return-void
.end method

.method private static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 79
    :try_start_8
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/anythink/china/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 81
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v0

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-object v0

    .line 84
    :catchall_22
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anythink/china/a/c$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 97
    :try_start_9
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/anythink/china/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 99
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 100
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    .line 102
    :cond_1f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    return v0

    .line 102
    :catchall_26
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
