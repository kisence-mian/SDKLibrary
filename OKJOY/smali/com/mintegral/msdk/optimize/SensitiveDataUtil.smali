.class public Lcom/mintegral/msdk/optimize/SensitiveDataUtil;
.super Ljava/lang/Object;
.source "SensitiveDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/optimize/SensitiveDataUtil$a;
    }
.end annotation


# static fields
.field private static androidID:Ljava/lang/String;

.field private static deviceid:Ljava/lang/String;

.field private static imsi:Ljava/lang/String;

.field private static mSelfId:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static oaid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 176
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;

    .line 178
    :cond_1a
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 183
    :goto_1c
    return-object v0

    .line 181
    :catch_1d
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;

    .line 183
    :cond_22
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->androidID:Ljava/lang/String;

    goto :goto_1c
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 101
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 103
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 104
    invoke-static {p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getSelfId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_27

    .line 113
    :cond_24
    :goto_24
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;

    return-object v0

    .line 111
    :catch_27
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->deviceid:Ljava/lang/String;

    goto :goto_24
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->imsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 189
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 191
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->imsi:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 192
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->imsi:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 198
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->imsi:Ljava/lang/String;

    return-object v0

    .line 196
    :catch_1f
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->imsi:Ljava/lang/String;

    goto :goto_1c
.end method

.method private static getMac()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 144
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 146
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 148
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 149
    if-nez v2, :cond_2e

    .line 150
    const-string v0, ""

    .line 166
    :goto_2d
    return-object v0

    .line 153
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    array-length v4, v2

    move v0, v1

    :goto_35
    if-ge v0, v4, :cond_4f

    aget-byte v1, v2, v0

    .line 155
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 158
    :cond_4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5e

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 161
    :cond_5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_2d

    .line 164
    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :cond_67
    const-string v0, ""

    goto :goto_2d
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    .line 121
    invoke-static {}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->getMac()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_12
    if-nez v0, :cond_28

    .line 128
    const-string v0, ""

    .line 138
    :goto_16
    return-object v0

    .line 123
    :cond_17
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 124
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 130
    :cond_28
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 133
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->macAddress:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_16

    .line 136
    :catch_37
    move-exception v0

    const-string v0, ""

    goto :goto_16

    .line 138
    :cond_3b
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->macAddress:Ljava/lang/String;

    goto :goto_16
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 203
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->oaid:Ljava/lang/String;

    .line 209
    :goto_a
    return-object v0

    .line 206
    :cond_b
    :try_start_b
    new-instance v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil$a;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil$a;->b:Ljava/lang/String;

    .line 207
    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->oaid:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_a

    .line 209
    :catch_15
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method public static getSelfId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->mSelfId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/.a/track_id.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    .line 84
    invoke-static {p0, v0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->writeInstallationFile(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->mSelfId:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_2d

    .line 92
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->mSelfId:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 93
    const-string v0, ""

    .line 96
    :goto_25
    return-object v0

    .line 86
    :cond_26
    :try_start_26
    invoke-static {v0}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->mSelfId:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 89
    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 96
    :cond_32
    sget-object v0, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->mSelfId:Ljava/lang/String;

    goto :goto_25
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 66
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_1b
    .catchall {:try_start_1 .. :try_end_8} :catchall_27

    .line 67
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v3, v0, [B

    .line 68
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_17} :catch_31
    .catchall {:try_start_8 .. :try_end_17} :catchall_2f

    .line 74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 77
    :goto_1a
    return-object v0

    .line 71
    :catch_1b
    move-exception v0

    move-object v2, v1

    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2f

    .line 73
    if-eqz v2, :cond_25

    .line 74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_25
    move-object v0, v1

    .line 77
    goto :goto_1a

    .line 73
    :catchall_27
    move-exception v0

    move-object v2, v1

    :goto_29
    if-eqz v2, :cond_2e

    .line 74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2e
    throw v0

    .line 73
    :catchall_2f
    move-exception v0

    goto :goto_29

    .line 71
    :catch_31
    move-exception v0

    goto :goto_1d
.end method

.method private static writeFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 44
    const/4 v2, 0x0

    .line 46
    :try_start_15
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_25
    .catchall {:try_start_15 .. :try_end_1a} :catchall_30

    .line 47
    :try_start_1a
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_21} :catch_3a
    .catchall {:try_start_1a .. :try_end_21} :catchall_38

    .line 52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 55
    :cond_24
    :goto_24
    return-void

    .line 49
    :catch_25
    move-exception v0

    move-object v1, v2

    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_38

    .line 51
    if-eqz v1, :cond_24

    .line 52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_24

    .line 51
    :catchall_30
    move-exception v0

    move-object v1, v2

    :goto_32
    if-eqz v1, :cond_37

    .line 52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_37
    throw v0

    .line 51
    :catchall_38
    move-exception v0

    goto :goto_32

    .line 49
    :catch_3a
    move-exception v0

    goto :goto_27
.end method

.method private static writeInstallationFile(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/mintegral/msdk/optimize/SensitiveDataUtil;->writeFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
