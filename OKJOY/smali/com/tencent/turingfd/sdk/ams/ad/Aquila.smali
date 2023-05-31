.class public Lcom/tencent/turingfd/sdk/ams/ad/Aquila;
.super Lcom/tencent/turingfd/sdk/ams/ad/synchronized;
.source "SourceFile"


# static fields
.field public static final yc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/long;->S:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;->yc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3
    :try_start_a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_58

    :goto_16
    if-eqz v2, :cond_29

    .line 4
    array-length v4, v2

    if-lez v4, :cond_29

    .line 5
    aget-object v2, v2, v1

    const-string v4, "SHA1"

    .line 6
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 7
    :try_start_23
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23 .. :try_end_26} :catch_82

    move-result-object v4

    if-nez v4, :cond_5b

    .line 14
    :cond_29
    :goto_29
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/long;->U:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 17
    :try_start_37
    sget-object v5, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;->yc:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v0, v2, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 23
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_87

    move-result-object v0

    .line 24
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 3
    :catch_58
    move-exception v2

    move-object v2, v0

    goto :goto_16

    .line 8
    :cond_5b
    :try_start_5b
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    array-length v5, v2

    :goto_65
    if-ge v1, v5, :cond_7d

    .line 11
    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 12
    :cond_7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_80} :catch_82

    move-result-object v0

    goto :goto_29

    .line 13
    :catch_82
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_29

    .line 25
    :catchall_87
    move-exception v0

    .line 26
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
