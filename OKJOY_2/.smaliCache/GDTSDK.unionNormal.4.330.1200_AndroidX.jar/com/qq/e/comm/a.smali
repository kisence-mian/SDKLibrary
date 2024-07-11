.class public Lcom/qq/e/comm/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getADActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getPortraitADActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getLandscapeADActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getDownLoadServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result p0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_52

    if-eqz p0, :cond_51

    return v1

    :cond_51
    return v0

    :catchall_52
    move-exception p0

    const-string v1, "Exception While check SDK Env"

    invoke-static {v1, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static varargs a(Landroid/content/Context;[Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-gtz v1, :cond_39

    :try_start_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_2f

    const-string p0, "Activity[%s] is required in AndroidManifest.xml"

    new-array v1, v2, [Ljava/lang/Object;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_32

    return v0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_32
    move-exception p0

    const-string p1, "Exception while checking required activities"

    invoke-static {p1, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_39
    return v2
.end method

.method public static a([B)[B
    .registers 4

    if-eqz p0, :cond_49

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_49

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_2b
    .catchall {:try_start_c .. :try_end_11} :catchall_29

    :try_start_11
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_27
    .catchall {:try_start_11 .. :try_end_1b} :catchall_39

    :try_start_1b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_38

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    :catch_27
    move-exception p0

    goto :goto_2d

    :catchall_29
    move-exception p0

    goto :goto_3b

    :catch_2b
    move-exception p0

    move-object v2, v1

    :goto_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_39

    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_22

    :goto_38
    return-object v1

    :catchall_39
    move-exception p0

    move-object v1, v2

    :goto_3b
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_48
    throw p0

    :cond_49
    :goto_49
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 8

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_31

    :try_start_10
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_27

    const-string p0, "Permission %s is required in AndroidManifest.xml"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    return v1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_2a
    move-exception p0

    const-string v0, "Check required Permissions error"

    invoke-static {v0, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_31
    return v4
.end method

.method private static varargs b(Landroid/content/Context;[Ljava/lang/Class;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-gtz v1, :cond_37

    :try_start_5
    aget-object v3, p1, v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2d

    const-string p0, "Service[%s] is required in AndroidManifest.xml"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_30
    move-exception p0

    const-string p1, "Exception while checking required services"

    invoke-static {p1, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_37
    return v2
.end method

.method public static b([B)[B
    .registers 7

    if-eqz p0, :cond_64

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_64

    :cond_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_15
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_40
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3e

    :goto_1a
    :try_start_1a
    invoke-virtual {v3, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    :cond_26
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_3c
    .catchall {:try_start_1a .. :try_end_2d} :catchall_51

    :try_start_2d
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50

    :catch_3c
    move-exception v1

    goto :goto_42

    :catchall_3e
    move-exception v1

    goto :goto_53

    :catch_40
    move-exception v1

    move-object v3, v2

    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_4a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_37

    :goto_50
    return-object v2

    :catchall_51
    move-exception v1

    move-object v2, v3

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_58
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_63
    throw v1

    :cond_64
    :goto_64
    return-object p0
.end method
