.class public Lcom/tencent/smtt/utils/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/utils/b;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/utils/b;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/utils/b;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/utils/b;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "android.content.pm.PackageParser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_e
    if-ge v2, v5, :cond_104

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.content.pm.PackageParser$Package"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_bb

    :goto_1e
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v4, "parsePackage"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/File;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "collectCertificates"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "generatePackageInfo"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-class v8, [I

    aput-object v8, v7, v0

    const/4 v0, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const/4 v0, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const/4 v0, 0x4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object p0, v7, v6

    const/4 v6, 0x2

    aput-object v3, v7, v6

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c0

    move-object v0, v1

    :goto_ba
    return-object v0

    :cond_bb
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_e

    :cond_c0
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_d5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d5
    const/4 v2, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_fd} :catch_fe

    goto :goto_ba

    :catch_fe
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_ba

    :cond_104
    move-object v0, v1

    goto/16 :goto_1e
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/smtt/utils/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/smtt/utils/b;->c:Ljava/lang/String;

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "getprop ro.product.cpu.abi"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1f} :catch_4e
    .catchall {:try_start_c .. :try_end_1f} :catchall_69

    :try_start_1f
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_83
    .catchall {:try_start_1f .. :try_end_24} :catchall_7e

    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "i686"

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_35} :catch_86
    .catchall {:try_start_24 .. :try_end_35} :catchall_80

    move-result-object v0

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_7c

    :cond_3b
    :goto_3b
    if-eqz v3, :cond_b

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_b

    :catch_41
    move-exception v1

    goto :goto_b

    :cond_43
    :try_start_43
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4c} :catch_86
    .catchall {:try_start_43 .. :try_end_4c} :catchall_80

    move-result-object v0

    goto :goto_36

    :catch_4e
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    :goto_51
    :try_start_51
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_7e

    if-eqz v2, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_7a

    :cond_63
    :goto_63
    if-eqz v3, :cond_b

    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_41

    goto :goto_b

    :catchall_69
    move-exception v0

    move-object v3, v2

    :goto_6b
    if-eqz v2, :cond_70

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_76

    :cond_70
    :goto_70
    if-eqz v3, :cond_75

    :try_start_72
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_78

    :cond_75
    :goto_75
    throw v0

    :catch_76
    move-exception v1

    goto :goto_70

    :catch_78
    move-exception v1

    goto :goto_75

    :catch_7a
    move-exception v1

    goto :goto_63

    :catch_7c
    move-exception v1

    goto :goto_3b

    :catchall_7e
    move-exception v0

    goto :goto_6b

    :catchall_80
    move-exception v0

    move-object v2, v1

    goto :goto_6b

    :catch_83
    move-exception v0

    move-object v1, v0

    goto :goto_51

    :catch_86
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_51
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Z)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/16 v3, 0x41

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/b;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_38

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_31

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_31

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_1d
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0

    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_d

    :cond_31
    const-string v1, "AppUtil"

    const-string v2, "[getSignatureFromApk] pkgInfo is not null BUT signatures is null!"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    move-object v1, v0

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_26

    move-result-object v0

    :try_start_19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_28

    move-result-object v0

    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    goto :goto_25

    :catch_28
    move-exception v1

    goto :goto_25
.end method

.method public static a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;
    .registers 7

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    if-eqz p1, :cond_3b

    const/4 v2, 0x0

    const/4 v0, 0x2

    :try_start_f
    new-array v0, v0, [B

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_33
    .catchall {:try_start_f .. :try_end_18} :catchall_bf

    :try_start_18
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "PK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, ""
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_d9
    .catchall {:try_start_18 .. :try_end_2a} :catchall_d7

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_a

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_33
    move-exception v0

    move-object v1, v2

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_d7

    :try_start_38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_ca

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.jd.jrapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "AppUtil"

    const-string v1, "[AppUtil.getSignatureFromApk]  #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/smtt/utils/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v1, "AppUtil"

    const-string v2, "[AppUtil.getSignatureFromApk]  #2"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_5f} :catch_60

    goto :goto_a

    :catch_60
    move-exception v0

    const-string v0, "AppUtil"

    const-string v1, "[AppUtil.getSignatureFromApk]  #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    const-string v0, "AppUtil"

    const-string v1, "[AppUtil.getSignatureFromApk]  #4"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppUtil.getSignatureFromApk]  android api signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_a2

    invoke-static {p2}, Lcom/tencent/smtt/utils/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppUtil.getSignatureFromApk]  java get signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppUtil.getSignatureFromApk]  android reflection signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :catchall_bf
    move-exception v0

    move-object v1, v2

    :goto_c1
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    :goto_c4
    throw v0

    :catch_c5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catch_ca
    move-exception v0

    :goto_cb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3b

    :cond_d0
    :try_start_d0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_3b

    :catch_d5
    move-exception v0

    goto :goto_cb

    :catchall_d7
    move-exception v0

    goto :goto_c1

    :catch_d9
    move-exception v0

    goto/16 :goto_35
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    const/16 v2, 0x2000

    new-array v4, v2, [B

    invoke-static {v3, v0, v4}, Lcom/tencent/smtt/utils/b;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-static {v3, v0, v4}, Lcom/tencent/smtt/utils/b;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_62

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_46
    if-nez v0, :cond_52

    const-string v0, "META-INF/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    move-object v0, v1

    :goto_51
    return-object v0

    :cond_52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_5c

    move-result v0

    if-nez v0, :cond_23

    move-object v0, v1

    goto :goto_51

    :cond_5a
    move-object v0, v2

    goto :goto_51

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_51

    :cond_62
    move-object v0, v1

    goto :goto_46
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    array-length v2, p0

    shl-int/lit8 v0, v2, 0x1

    new-array v3, v0, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_35

    aget-byte v4, p0, v1

    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v5, v1, 0x1

    if-lt v0, v6, :cond_2f

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_19
    int-to-char v0, v0

    aput-char v0, v3, v5

    and-int/lit8 v0, v4, 0xf

    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v6, :cond_32

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_28
    int-to-char v0, v0

    aput-char v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_2f
    add-int/lit8 v0, v0, 0x30

    goto :goto_19

    :cond_32
    add-int/lit8 v0, v0, 0x30

    goto :goto_28

    :cond_35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 6

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    :cond_4
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static b(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public static b()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-nez v2, :cond_2e

    const-string v0, ""

    :goto_2d
    return-object v0

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_35
    if-ge v0, v4, :cond_4f

    aget-byte v1, v2, v0

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_2d

    :catch_63
    move-exception v0

    :cond_64
    const-string v0, "02:00:00:00:00:00"

    goto :goto_2d
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    sget-object v0, Lcom/tencent/smtt/utils/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/tencent/smtt/utils/b;->a:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_c

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_c
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    sget-object v0, Lcom/tencent/smtt/utils/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/tencent/smtt/utils/b;->b:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_c

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_c
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_35

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_2b

    const-string v0, ""

    :goto_21
    sput-object v0, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_30

    :cond_23
    :goto_23
    sget-object v0, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;

    return-object v0

    :cond_26
    :try_start_26
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_1d

    :cond_2b
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_21

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :cond_35
    invoke-static {}, Lcom/tencent/smtt/utils/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;

    goto :goto_23
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/tencent/smtt/utils/b;->e:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/utils/b;->e:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1a

    :goto_17
    sget-object v0, Lcom/tencent/smtt/utils/b;->e:Ljava/lang/String;

    goto :goto_a

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
