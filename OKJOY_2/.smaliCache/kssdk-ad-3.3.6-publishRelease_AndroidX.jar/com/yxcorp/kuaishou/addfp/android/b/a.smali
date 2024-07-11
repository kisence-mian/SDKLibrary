.class public final Lcom/yxcorp/kuaishou/addfp/android/b/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "getNetworkIso"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Ljava/io/File;
    .registers 9

    const-string p1, "storage"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    :try_start_8
    const-string p1, "android.os.storage.StorageVolume"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "getPath"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "isRemovable"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    move v3, v2

    :goto_36
    if-ge v3, v0, :cond_65

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5e

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    return-object p0

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :catchall_61
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static a([B)[B
    .registers 8

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    int-to-byte v4, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    if-eqz p0, :cond_34

    array-length v3, p0

    if-nez v3, :cond_14

    goto :goto_34

    :cond_14
    move v3, v2

    move v4, v3

    :goto_16
    if-ge v2, v0, :cond_33

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    and-int/lit16 v4, v5, 0xff

    aget-byte v5, v1, v2

    aget-byte v6, v1, v4

    aput-byte v6, v1, v2

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    array-length v5, p0

    rem-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    return-object v1

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    :try_start_3
    array-length v1, p1

    if-lez v1, :cond_1f

    if-eqz p0, :cond_1f

    array-length v1, p0

    if-gtz v1, :cond_c

    goto :goto_1f

    :cond_c
    if-eqz p0, :cond_16

    if-nez p1, :cond_11

    goto :goto_16

    :cond_11
    invoke-static {p0, p1}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->c([B[B)[B

    move-result-object p0

    goto :goto_17

    :cond_16
    :goto_16
    move-object p0, v0

    :goto_17
    if-eqz p0, :cond_1a

    array-length p1, p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 9

    const-string v0, "KWE_PN"

    const-string v1, "phone"

    const-string v2, "KWE_N"

    :try_start_6
    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/4 v6, 0x1

    if-lt v3, v4, :cond_31

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    goto :goto_3f

    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_3e

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    goto :goto_3f

    :cond_3e
    move v1, v6

    :goto_3f
    if-nez v1, :cond_42

    move v1, v6

    :cond_42
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v1, v6, :cond_95

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_95

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_95

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_a3

    const-string v5, ""

    if-le v1, v6, :cond_71

    :try_start_5c
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    goto :goto_82

    :cond_71
    if-ne v1, v6, :cond_81

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    move-object v7, v5

    move-object v5, p0

    move-object p0, v7

    goto :goto_82

    :cond_81
    move-object p0, v5

    :goto_82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    :cond_8e
    new-array v0, v3, [Ljava/lang/String;

    aput-object v5, v0, v4

    aput-object p0, v0, v6

    return-object v0

    :cond_95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9c

    move-object p0, v2

    :cond_9c
    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v4

    aput-object v2, v0, v6
    :try_end_a2
    .catchall {:try_start_5c .. :try_end_a2} :catchall_a3

    return-object v0

    :catchall_a3
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    :try_start_3
    array-length v1, p1

    if-lez v1, :cond_1f

    if-eqz p0, :cond_1f

    array-length v1, p0

    if-gtz v1, :cond_c

    goto :goto_1f

    :cond_c
    if-eqz p0, :cond_16

    if-nez p1, :cond_11

    goto :goto_16

    :cond_11
    invoke-static {p0, p1}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->c([B[B)[B

    move-result-object p0

    goto :goto_17

    :cond_16
    :goto_16
    move-object p0, v0

    :goto_17
    if-eqz p0, :cond_1a

    array-length p1, p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private static c([B[B)[B
    .registers 8

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a([B)[B

    move-result-object p1

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    array-length v4, p0

    if-ge v1, v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, p1, v2

    aget-byte v5, p1, v3

    aput-byte v5, p1, v2

    aput-byte v4, p1, v3

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p0, v1

    aget-byte v4, p1, v4

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    aget-byte v4, v0, v1

    xor-int/lit8 v4, v4, 0x2a

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_3d
    return-object v0
.end method
