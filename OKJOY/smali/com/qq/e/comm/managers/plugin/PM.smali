.class public Lcom/qq/e/comm/managers/plugin/PM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/plugin/PM$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private volatile e:I

.field private volatile f:Ldalvik/system/DexClassLoader;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/nio/channels/FileLock;

.field private i:Z

.field private j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

.field private volatile k:Z

.field private l:Lcom/qq/e/comm/managers/plugin/PM$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$2;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/plugin/PM$2;-><init>()V

    sput-object v0, Lcom/qq/e/comm/managers/plugin/PM;->m:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/PM$a$a;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/qq/e/comm/managers/plugin/PM$a$a;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Z

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$1;

    invoke-direct {v0, p0}, Lcom/qq/e/comm/managers/plugin/PM$1;-><init>(Lcom/qq/e/comm/managers/plugin/PM;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V

    :cond_2a
    return-void
.end method

.method private a()V
    .registers 6

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PluginFile:\t"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-nez v0, :cond_48

    const-string v0, "null"

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-eqz v0, :cond_59

    :try_start_21
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    const-string v3, "e_qq_com_dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->f()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_47} :catch_4f

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :catch_4f
    move-exception v0

    const-string v1, "exception while init plugin class loader"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->g()V

    goto :goto_47

    :cond_59
    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    goto :goto_47
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Exception while init online plugin: "

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->g()V

    goto :goto_d
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/plugin/PM;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->g()V

    return-void
.end method

.method private b()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_3b
    .catchall {:try_start_1 .. :try_end_20} :catchall_58

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    const/4 v0, 0x1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_3a
    return v0

    :catch_3b
    move-exception v1

    :try_start_3c
    const-string v2, "Exception while init plugin manager"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_58

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_3a

    :catchall_58
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/qq/e/comm/managers/plugin/PM;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    return v0
.end method

.method private c()Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/16 v0, 0x416

    iput v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    const/4 v0, 0x1

    goto :goto_5

    :cond_2c
    const-string v1, "Fail to prepair Defult plugin "

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic d(Lcom/qq/e/comm/managers/plugin/PM;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v1, :cond_3e

    new-instance v1, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NextExist,Updated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_3e
    new-instance v1, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/a;->a()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/a;->b()I

    move-result v2

    const/16 v3, 0x416

    if-ge v2, v3, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last updated plugin version ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";asset plugin version=1046"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_77
    :goto_77
    return v0

    :cond_78
    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/plugin/a;->b()I

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/4 v0, 0x1

    goto :goto_77
.end method

.method static synthetic e(Lcom/qq/e/comm/managers/plugin/PM;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/d;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const-string v2, "lock"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_3e

    const/4 v0, 0x1

    goto :goto_1b

    :catch_3e
    move-exception v1

    goto :goto_1b
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->onLoadSuccess()V

    :cond_9
    return-void
.end method

.method static synthetic f(Lcom/qq/e/comm/managers/plugin/PM;)Z
    .registers 2

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v0

    return v0
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->onLoadFail()V

    :cond_9
    return-void
.end method

.method static synthetic g(Lcom/qq/e/comm/managers/plugin/PM;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V

    return-void
.end method


# virtual methods
.method public autoRollbackPlugin(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "autoRollbackSwitch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/setting/SM;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_22

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    if-lez v0, :cond_22

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    const/16 v1, 0x416

    if-eq v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Z

    if-eqz v0, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    iput-boolean v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Z

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/comm/managers/plugin/PM$3;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/comm/managers/plugin/PM$3;-><init>(Lcom/qq/e/comm/managers/plugin/PM;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_22
.end method

.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/c;
        }
    .end annotation

    .prologue
    .local p1, "factoryInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetFactoryInstaceforInterface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "PluginClassLoader is parent"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x1

    :goto_32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    if-nez v1, :cond_61

    new-instance v0, Lcom/qq/e/comm/managers/plugin/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    throw v0

    :cond_5b
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    move-object v1, v0

    goto :goto_20

    :cond_5f
    move v0, v2

    goto :goto_32

    :cond_61
    :try_start_61
    sget-object v0, Lcom/qq/e/comm/managers/plugin/PM;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    new-instance v0, Lcom/qq/e/comm/managers/plugin/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "factory  implemention name is not specified for interface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    new-instance v1, Lcom/qq/e/comm/managers/plugin/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to getfactory implement instance for interface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a9
    :try_start_a9
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServiceDelegateFactory ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_d3} :catch_88

    return-object v0
.end method

.method public getLocalSig()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPOFactory()Lcom/qq/e/comm/pi/POFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/c;
        }
    .end annotation

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/POFactory;

    return-object v0
.end method

.method public getPluginVersion()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    return v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "sig"    # Ljava/lang/String;
    .param p2, "downLoadURL"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "invalidPluginSig"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/comm/util/SharedPreferencedUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    invoke-virtual {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/PM$a$b;)V

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/plugin/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method
