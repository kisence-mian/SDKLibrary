.class Lcom/tencent/smtt/sdk/ai;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/ai;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ai;

    sput-object v0, Lcom/tencent/smtt/sdk/ai;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ai;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/smtt/sdk/ai;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ai;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/smtt/sdk/ai;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/ai;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ai;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1c

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/ai;->b:Landroid/content/Context;

    sget-object v0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ai;

    return-object v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private e()Ljava/util/Properties;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ai;->a()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_25
    .catchall {:try_start_1 .. :try_end_a} :catchall_38

    if-eqz v0, :cond_57

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_4c
    .catchall {:try_start_c .. :try_end_16} :catchall_38

    :try_start_16
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_52
    .catchall {:try_start_16 .. :try_end_19} :catchall_44

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    :cond_1e
    :goto_1e
    move-object v0, v2

    :cond_1f
    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    :catch_25
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_49

    if-eqz v2, :cond_1f

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_1f

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    :catchall_38
    move-exception v0

    :goto_39
    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    throw v0

    :catch_3f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    :catchall_44
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_39

    :catchall_49
    move-exception v0

    move-object v1, v2

    goto :goto_39

    :catch_4c
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2a

    :catch_52
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_2a

    :cond_57
    move-object v0, v1

    goto :goto_19
.end method


# virtual methods
.method a()Ljava/io/File;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    sget-object v0, Lcom/tencent/smtt/sdk/ai;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "tbscoreinstall.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(I)V
    .registers 3

    const-string v0, "dexopt_retry_num"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method a(II)V
    .registers 4

    const-string v0, "copy_core_ver"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    const-string v0, "copy_status"

    invoke-virtual {p0, v0, p2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "install_apk_path"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ai;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ai;->a()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2e

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_39
    .catchall {:try_start_1 .. :try_end_15} :catchall_49

    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_58
    .catchall {:try_start_15 .. :try_end_2d} :catchall_56

    move-object v2, v1

    :cond_2e
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catch_39
    move-exception v0

    move-object v1, v2

    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_56

    if-eqz v1, :cond_33

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_33

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catchall_49
    move-exception v0

    move-object v1, v2

    :goto_4b
    if-eqz v1, :cond_50

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    throw v0

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catchall_56
    move-exception v0

    goto :goto_4b

    :catch_58
    move-exception v0

    goto :goto_3b
.end method

.method b()I
    .registers 2

    const-string v0, "install_core_ver"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ai;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method b(I)V
    .registers 3

    const-string v0, "unzip_retry_num"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method b(II)V
    .registers 4

    const-string v0, "install_core_ver"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    const-string v0, "install_status"

    invoke-virtual {p0, v0, p2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method c()I
    .registers 2

    const-string v0, "install_status"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ai;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method c(I)V
    .registers 3

    const-string v0, "incrupdate_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method d()I
    .registers 2

    const-string v0, "incrupdate_status"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ai;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method d(I)V
    .registers 3

    const-string v0, "unlzma_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    return-void
.end method
