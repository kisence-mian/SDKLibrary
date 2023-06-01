.class public Lcom/ssjj/fnsdk/core/UpdateUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3e

    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/ssjj/fnsdk/core/FNFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_5a

    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_5a
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_62} :catch_63

    goto :goto_6a

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_6a
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00\u5b89\u88c5\u5931\u8d25\u3002\u60a8\u53ef\u4ee5\u5230SD\u5361\u76ee\u5f55\u4e0b:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5b89\u88c5\u65b0\u7248\u6e38\u620f\u5305~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_37
    const-string p1, "\u6253\u5f00\u5b89\u88c5\u5931\u8d25\u3002\u60a8\u53ef\u4ee5\u54a8\u8be2\u5ba2\u670d\uff0c\u6216\u5230\u5b98\u7f51\u4e0a\u4e0b\u8f7d\u65b0\u7248\u6e38\u620f\u5305~"

    :goto_39
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_40
    return-void
.end method

.method public static checkSD(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    :try_start_f
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    if-nez p0, :cond_18

    return v0

    :cond_18
    return v1

    :catchall_19
    move-exception p0

    return v0
.end method

.method public static cmpVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    return v1

    :cond_c
    const/4 v2, -0x1

    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    return v2

    :cond_12
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_21

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    const/4 v4, 0x0

    :goto_23
    if-lt v0, v3, :cond_26

    goto :goto_47

    :cond_26
    :try_start_26
    aget-object v4, p0, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_3a} :catch_3c

    sub-int/2addr v4, v5

    goto :goto_45

    :catch_3c
    move-exception v4

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_45
    if-eqz v4, :cond_54

    :goto_47
    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_53

    if-nez v4, :cond_53

    array-length p0, p0

    array-length p1, p1

    if-ge p0, p1, :cond_52

    const/4 v1, -0x1

    :cond_52
    move v4, v1

    :cond_53
    return v4

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method public static exec([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_98
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_7d
    .catchall {:try_start_6 .. :try_end_f} :catchall_78

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_73
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_6e
    .catchall {:try_start_f .. :try_end_13} :catchall_68

    :goto_13
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4e

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_23
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v4, :cond_4a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_32} :catch_61
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_5a
    .catchall {:try_start_13 .. :try_end_32} :catchall_52

    if-eqz v2, :cond_3a

    :try_start_34
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3a

    :catch_38
    move-exception p0

    goto :goto_40

    :cond_3a
    :goto_3a
    if-eqz p0, :cond_43

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_38

    goto :goto_43

    :goto_40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_43
    :goto_43
    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_b7

    :cond_4a
    :try_start_4a
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_23

    :cond_4e
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_61
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_5a
    .catchall {:try_start_4a .. :try_end_51} :catchall_52

    goto :goto_13

    :catchall_52
    move-exception v1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_b9

    :catch_5a
    move-exception v1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_81

    :catch_61
    move-exception v1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_9c

    :catchall_68
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_b9

    :catch_6e
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_81

    :catch_73
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_9c

    :catchall_78
    move-exception v1

    move-object v0, p0

    move-object v2, v1

    move-object v1, v0

    goto :goto_b9

    :catch_7d
    move-exception v1

    move-object v0, p0

    move-object v2, v1

    move-object v1, v0

    :goto_81
    :try_start_81
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_b8

    if-eqz p0, :cond_8c

    :try_start_86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_8c

    :catch_8a
    move-exception p0

    goto :goto_92

    :cond_8c
    :goto_8c
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_91} :catch_8a

    goto :goto_95

    :goto_92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_95
    :goto_95
    if-eqz v1, :cond_b5

    goto :goto_b2

    :catch_98
    move-exception v1

    move-object v0, p0

    move-object v2, v1

    move-object v1, v0

    :goto_9c
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b8

    if-eqz p0, :cond_a7

    :try_start_a1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_a7

    :catch_a5
    move-exception p0

    goto :goto_ad

    :cond_a7
    :goto_a7
    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ac} :catch_a5

    goto :goto_b0

    :goto_ad
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b0
    :goto_b0
    if-eqz v1, :cond_b5

    :goto_b2
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_b5
    const-string v3, ""

    :cond_b7
    :goto_b7
    return-object v3

    :catchall_b8
    move-exception v2

    :goto_b9
    if-eqz p0, :cond_c1

    :try_start_bb
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_c1

    :catch_bf
    move-exception p0

    goto :goto_c7

    :cond_c1
    :goto_c1
    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c6} :catch_bf

    goto :goto_ca

    :goto_c7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ca
    :goto_ca
    if-eqz v1, :cond_cf

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_cf
    throw v2
.end method

.method public static getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-lt v4, v2, :cond_d

    goto :goto_42

    :cond_d
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Builder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog$Builder;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_41

    move-object v0, v1

    goto :goto_42

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :catch_41
    move-exception v1

    :goto_42
    if-nez v0, :cond_49

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_49
    return-object v0
.end method

.method public static getSDStorageAvailable()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0

    :cond_26
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getStringSize(J)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSize(JZ)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x400

    div-long v0, p0, v0

    long-to-int v1, v0

    const/16 v0, 0x400

    if-le v1, v0, :cond_23

    if-eqz p2, :cond_e

    const-string p0, "%.2fMB"

    goto :goto_10

    :cond_e
    const-string p0, "%.2f"

    :goto_10
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    int-to-float p2, v1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string v0, ""

    if-lez v1, :cond_3d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_34

    const-string v0, "KB"

    :cond_34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4a

    const-string v0, "B"

    :cond_4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSizeKBNoUnit(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x400

    div-long/2addr p0, v0

    long-to-int p1, p0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    int-to-float p1, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "%.2f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringTime(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "00:00:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_1a
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeLeftStr(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "00:00:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_1a
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_8

    const-string p0, "Context is null!"

    :goto_4
    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "installApk err: not found "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_30
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/ssjj/fnsdk/core/UpdateUtil;->a:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/ssjj/fnsdk/core/UpdateUtil;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "install cacheDir apk"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "chmod"

    const-string v1, "604"

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_6f
    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isSDStorageEnough(J)Z
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getSDStorageAvailable()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-lez v2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1c

    if-eqz p0, :cond_1d

    return v1

    :catchall_1c
    move-exception p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static newOpenOcsQQ(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->openOcsQQ(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_14

    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->openDefaultQQ(Landroid/app/Activity;)V

    :goto_14
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UpdateUtil --> requestCode="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "resultCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static openDefaultQQ(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    const-string v0, "mqqwpa://im/chat?chat_type=crm&uin=800152012&version=1&src_type=web&web_src=http:://wpa.b.qq.com"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e3a\u60a8\u6253\u5f00QQ\u5ba2\u670d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_35

    :catch_1f
    move-exception v0

    instance-of v1, v0, Landroid/content/ActivityNotFoundException;

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "\u8bf7\u5148\u5b89\u88c5\u624b\u673aQQ\u5ba2\u6237\u7aef\uff0c\u624d\u80fd\u5728QQ\u4e0e\u5ba2\u670d\u804a\u5929\u54e6~"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    return-void
.end method

.method public static openOcsQQ(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&version=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u4e3a\u60a8\u6253\u5f00QQ\u5ba2\u670d"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_48

    :catch_32
    move-exception p1

    instance-of v0, p1, Landroid/content/ActivityNotFoundException;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u624b\u673aQQ\u5ba2\u6237\u7aef\uff0c\u624d\u80fd\u5728QQ\u4e0e\u5ba2\u670d\u804a\u5929\u54e6~"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_48
    return-void
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2a

    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_26

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_2a
    return v1
.end method
