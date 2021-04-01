.class public Lcom/tencent/smtt/utils/w;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/smtt/utils/w;


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/io/File;

.field private d:Z

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/w;->e:Lcom/tencent/smtt/utils/w;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/utils/w;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    iput-boolean v1, p0, Lcom/tencent/smtt/utils/w;->a:Z

    iput-boolean v1, p0, Lcom/tencent/smtt/utils/w;->d:Z

    iput-object v0, p0, Lcom/tencent/smtt/utils/w;->f:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/utils/w;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/w;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/utils/w;
    .registers 2

    const-class v0, Lcom/tencent/smtt/utils/w;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/w;->e:Lcom/tencent/smtt/utils/w;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/utils/w;
    .registers 3

    const-class v1, Lcom/tencent/smtt/utils/w;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/utils/w;->e:Lcom/tencent/smtt/utils/w;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/utils/w;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/utils/w;->e:Lcom/tencent/smtt/utils/w;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/utils/w;->e:Lcom/tencent/smtt/utils/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Ljava/io/File;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->b:Landroid/content/Context;

    const-string v2, "tbs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "core_private"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    :goto_23
    return-object v1

    :cond_24
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/utils/w;->c:Ljava/io/File;

    const-string v3, "debug.conf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_36} :catch_38

    :cond_36
    :goto_36
    move-object v1, v0

    goto :goto_23

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_36
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/smtt/utils/w;->d:Z

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/w;->c()V

    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->f:Ljava/io/File;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/tencent/smtt/utils/w;->d()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/utils/w;->f:Ljava/io/File;

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/utils/w;->f:Ljava/io/File;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_48
    .catchall {:try_start_2 .. :try_end_e} :catchall_57

    if-nez v0, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/smtt/utils/w;->f:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1e} :catch_48
    .catchall {:try_start_12 .. :try_end_1e} :catchall_57

    :try_start_1e
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "setting_forceUseSystemWebview"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/smtt/utils/w;->a:Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3c} :catch_66
    .catchall {:try_start_1e .. :try_end_3c} :catchall_63

    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    goto :goto_10

    :catch_40
    move-exception v0

    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_10

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_48
    move-exception v0

    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    if-eqz v1, :cond_10

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_45

    goto :goto_10

    :catch_52
    move-exception v0

    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_45

    goto :goto_10

    :catchall_57
    move-exception v0

    :goto_58
    if-eqz v1, :cond_5d

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_45

    :cond_5d
    :goto_5d
    :try_start_5d
    throw v0

    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_45

    goto :goto_5d

    :catchall_63
    move-exception v0

    move-object v1, v2

    goto :goto_58

    :catch_66
    move-exception v0

    move-object v1, v2

    goto :goto_49
.end method

.method public c()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/smtt/utils/w;->d()Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_61
    .catchall {:try_start_1 .. :try_end_4} :catchall_77

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_10

    :goto_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_61
    .catchall {:try_start_1a .. :try_end_24} :catchall_77

    :try_start_24
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "setting_forceUseSystemWebview"

    iget-boolean v5, p0, Lcom/tencent/smtt/utils/w;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "result_systemWebviewForceUsed"

    iget-boolean v5, p0, Lcom/tencent/smtt/utils/w;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_4c} :catch_93
    .catchall {:try_start_24 .. :try_end_4c} :catchall_8a

    const/4 v0, 0x0

    :try_start_4d
    invoke-virtual {v4, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_97
    .catchall {:try_start_4d .. :try_end_50} :catchall_8c

    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_5c

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_f

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    :catch_61
    move-exception v0

    move-object v1, v2

    :goto_63
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_8f

    :try_start_66
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_72

    :goto_69
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_f

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    :catchall_77
    move-exception v0

    move-object v3, v2

    :goto_79
    :try_start_79
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_80

    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_85

    :goto_7f
    throw v0

    :catch_80
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    :catch_85
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    :catchall_8a
    move-exception v0

    goto :goto_79

    :catchall_8c
    move-exception v0

    move-object v2, v1

    goto :goto_79

    :catchall_8f
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_79

    :catch_93
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_63

    :catch_97
    move-exception v0

    move-object v2, v3

    goto :goto_63
.end method
