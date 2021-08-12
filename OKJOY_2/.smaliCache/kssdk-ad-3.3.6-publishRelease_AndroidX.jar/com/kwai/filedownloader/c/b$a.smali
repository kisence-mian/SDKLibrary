.class public abstract Lcom/kwai/filedownloader/c/b$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/kwai/filedownloader/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/c/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.kwai.filedownloader.i.IFileDownloadIPCService"

    invoke-virtual {p0, p0, v0}, Lcom/kwai/filedownloader/c/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/b;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.kwai.filedownloader.i.IFileDownloadIPCService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/kwai/filedownloader/c/b;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/kwai/filedownloader/c/b;

    return-object v0

    :cond_13
    new-instance v0, Lcom/kwai/filedownloader/c/b$a$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/c/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20

    move-object v10, p0

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    const-string v3, "com.kwai.filedownloader.i.IFileDownloadIPCService"

    sparse-switch p1, :sswitch_data_152

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_12
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :sswitch_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c/b$a;->c()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :sswitch_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->f(I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    move v2, v12

    :cond_3c
    invoke-virtual {p0, v2}, Lcom/kwai/filedownloader/c/b$a;->a(Z)V

    return v12

    :sswitch_40
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    :cond_56
    invoke-virtual {p0, v2, v1}, Lcom/kwai/filedownloader/c/b$a;->a(ILandroid/app/Notification;)V

    return v12

    :sswitch_5a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c/b$a;->b()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_68
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->e(I)B

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByte(B)V

    return v12

    :sswitch_7a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->d(I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :sswitch_8c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->c(I)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :sswitch_9e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->b(I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_b0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c/b$a;->a()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :sswitch_ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->a(I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_cc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_df

    move v5, v12

    goto :goto_e0

    :cond_df
    move v5, v2

    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f4

    move v9, v12

    goto :goto_f5

    :cond_f4
    move v9, v2

    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_103

    sget-object v1, Lcom/kwai/filedownloader/d/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/d/b;

    :cond_103
    move-object v13, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10c

    move v14, v12

    goto :goto_10d

    :cond_10c
    move v14, v2

    :goto_10d
    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v13

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/kwai/filedownloader/c/b$a;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :sswitch_11e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kwai/filedownloader/c/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_134
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/c/a$a;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->b(Lcom/kwai/filedownloader/c/a;)V

    return v12

    :sswitch_143
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/c/a$a;->a(Landroid/os/IBinder;)Lcom/kwai/filedownloader/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/c/b$a;->a(Lcom/kwai/filedownloader/c/a;)V

    return v12

    :sswitch_data_152
    .sparse-switch
        0x1 -> :sswitch_143
        0x2 -> :sswitch_134
        0x3 -> :sswitch_11e
        0x4 -> :sswitch_cc
        0x5 -> :sswitch_ba
        0x6 -> :sswitch_b0
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_8c
        0x9 -> :sswitch_7a
        0xa -> :sswitch_68
        0xb -> :sswitch_5a
        0xc -> :sswitch_40
        0xd -> :sswitch_32
        0xe -> :sswitch_20
        0xf -> :sswitch_16
        0x5f4e5446 -> :sswitch_12
    .end sparse-switch
.end method
