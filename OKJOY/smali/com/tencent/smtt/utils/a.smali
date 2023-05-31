.class public Lcom/tencent/smtt/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)I
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_14

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v1

    const-string v2, "disable_get_apk_version_switch.txt"

    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;Z)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Z)I
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-eq v1, v3, :cond_16

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ne v1, v3, :cond_68

    :cond_16
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    move v1, v2

    :goto_25
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getReadApk()I

    move-result v3

    if-ne v3, v2, :cond_40

    move v1, v0

    move p2, v0

    :cond_34
    if-nez p2, :cond_38

    if-eqz v1, :cond_48

    :cond_38
    invoke-static {p1}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3b} :catch_44

    move-result v1

    if-lez v1, :cond_48

    move v0, v1

    :cond_3f
    :goto_3f
    return v0

    :cond_40
    const/4 v2, 0x2

    if-ne v3, v2, :cond_34

    goto :goto_3f

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_48
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    :try_start_50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_61} :catch_62

    goto :goto_3f

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_3f

    :cond_68
    move v1, v0

    goto :goto_25
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const/16 v10, 0x10

    const/4 v0, 0x0

    new-array v4, v10, [C

    fill-array-data v4, :array_78

    const/16 v2, 0x20

    new-array v5, v2, [C

    :try_start_d
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_75
    .catchall {:try_start_d .. :try_end_18} :catchall_61

    const/16 v6, 0x2000

    :try_start_1a
    new-array v6, v6, [B

    :goto_1c
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_33

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_73

    goto :goto_1c

    :catch_28
    move-exception v0

    :goto_29
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_73

    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_6e

    :cond_31
    :goto_31
    move-object v0, v1

    :cond_32
    :goto_32
    return-object v0

    :cond_33
    :try_start_33
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    move v3, v0

    :goto_38
    if-ge v0, v10, :cond_51

    aget-byte v7, v6, v0

    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v4, v9

    aput-char v9, v5, v3

    add-int/lit8 v3, v8, 0x1

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v4, v7

    aput-char v7, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_56} :catch_28
    .catchall {:try_start_33 .. :try_end_56} :catchall_73

    if-eqz v2, :cond_32

    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_32

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catchall_73
    move-exception v0

    goto :goto_63

    :catch_75
    move-exception v0

    move-object v2, v1

    goto :goto_29

    :array_78
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;JI)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_19

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_a

    :cond_19
    :try_start_19
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v2

    if-ne p4, v2, :cond_a

    const/4 v2, 0x1

    invoke-static {p0, v2, p1}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_2e

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a

    :catch_2e
    move-exception v1

    goto :goto_a
.end method

.method public static b(Ljava/io/File;)I
    .registers 7

    const/4 v2, 0x0

    const-class v4, Lcom/tencent/smtt/utils/a;

    monitor-enter v4

    :try_start_4
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_4e
    .catchall {:try_start_4 .. :try_end_9} :catchall_63

    :try_start_9
    const-string v0, "assets/webkit/tbs.conf"

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_8a
    .catchall {:try_start_9 .. :try_end_1d} :catchall_82

    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    const-string v2, "tbs_core_version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    array-length v2, v0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1d

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_8e
    .catchall {:try_start_1d .. :try_end_41} :catchall_85

    move-result v0

    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_47
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_7e
    .catchall {:try_start_44 .. :try_end_4c} :catchall_60

    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_60

    :goto_4d
    return v0

    :catch_4e
    move-exception v0

    move-object v1, v2

    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_87

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_58
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_7c
    .catchall {:try_start_55 .. :try_end_5d} :catchall_60

    :cond_5d
    :goto_5d
    const/4 v0, -0x1

    :try_start_5e
    monitor-exit v4

    goto :goto_4d

    :catchall_60
    move-exception v0

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_60

    throw v0

    :catchall_63
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_66
    if-eqz v1, :cond_6b

    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6b
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_80
    .catchall {:try_start_68 .. :try_end_70} :catchall_60

    :cond_70
    :goto_70
    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_60

    :cond_71
    if-eqz v1, :cond_76

    :try_start_73
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_76
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_7c
    .catchall {:try_start_73 .. :try_end_7b} :catchall_60

    goto :goto_5d

    :catch_7c
    move-exception v0

    goto :goto_5d

    :catch_7e
    move-exception v1

    goto :goto_4c

    :catch_80
    move-exception v1

    goto :goto_70

    :catchall_82
    move-exception v0

    move-object v1, v2

    goto :goto_66

    :catchall_85
    move-exception v0

    goto :goto_66

    :catchall_87
    move-exception v0

    move-object v3, v2

    goto :goto_66

    :catch_8a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_50

    :catch_8e
    move-exception v0

    move-object v2, v3

    goto :goto_50
.end method
