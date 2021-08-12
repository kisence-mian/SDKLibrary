.class public Lcom/qq/e/comm/managers/plugin/PM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/plugin/PM$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
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

.field private e:I

.field private f:Ldalvik/system/DexClassLoader;

.field private g:Ljava/io/RandomAccessFile;

.field private h:Ljava/nio/channels/FileLock;

.field private i:Z

.field private j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

.field private k:Lcom/qq/e/comm/pi/POFactory;

.field private l:I

.field private m:Lcom/qq/e/comm/managers/plugin/PM$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$2;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/plugin/PM$2;-><init>()V

    sput-object v0, Lcom/qq/e/comm/managers/plugin/PM;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/PM$a$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM$1;

    invoke-direct {v0, p0}, Lcom/qq/e/comm/managers/plugin/PM$1;-><init>(Lcom/qq/e/comm/managers/plugin/PM;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->m:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:I

    return-void
.end method

.method private a()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginFile:\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-nez v1, :cond_e

    const-string v1, "null"

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    if-eqz v0, :cond_53

    :try_start_26
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->e()V
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    const-string v1, "exception while init plugin class loader"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->f()V

    return-void

    :cond_53
    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/plugin/PM;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Exception while init online plugin: "

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->f()V

    return-void
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/plugin/PM;)V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->f()V

    return-void
.end method

.method private b()Z
    .registers 7

    const-string v0, "TimeStap_AFTER_PLUGIN_INIT:"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/plugin/PM;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_52

    iget-boolean v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-nez v2, :cond_26

    :goto_24
    move v2, v1

    goto :goto_50

    :cond_26
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/qq/e/comm/managers/plugin/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object v2, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/16 v2, 0x4b0

    iput v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    move v2, v3

    goto :goto_50

    :cond_4a
    const-string v2, "Fail to prepair Defult plugin "

    invoke-static {v2}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_68

    goto :goto_24

    :goto_50
    if-eqz v2, :cond_53

    :cond_52
    move v1, v3

    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return v1

    :catchall_68
    move-exception v2

    :try_start_69
    const-string v3, "Exception while init plugin manager"

    invoke-static {v3, v2}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_74

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :catchall_74
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v1
.end method

.method private c()Z
    .registers 5

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NextExist,Updated="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    :cond_3d
    new-instance v0, Lcom/qq/e/comm/managers/plugin/a;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/e/comm/managers/plugin/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/a;->b()I

    move-result v1

    const/16 v3, 0x4b0

    if-ge v1, v3, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last updated plugin version ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";asset plugin version=1200"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return v2

    :cond_78
    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/a;->b()I

    move-result v0

    iput v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->d:Ljava/io/File;

    const/4 v0, 0x1

    return v0

    :cond_8e
    return v2
.end method

.method private d()Z
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

    return v0

    :cond_1c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->h:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->g:Ljava/io/RandomAccessFile;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    const/4 v0, 0x1

    :cond_39
    return v0

    :catchall_3a
    move-exception v1

    return v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->onLoadSuccess()V

    :cond_7
    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->j:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/managers/plugin/PM$a$a;->onLoadFail()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/comm/managers/plugin/c;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetFactoryInstaceforInterface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_21

    :cond_1f
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginClassLoader is parent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    move v2, v3

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_ad

    :try_start_43
    sget-object v1, Lcom/qq/e/comm/managers/plugin/PM;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

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

    return-object v0

    :cond_7a
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
    :try_end_93
    .catchall {:try_start_43 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/managers/plugin/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to getfactory implement instance for interface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_ad
    new-instance v0, Lcom/qq/e/comm/managers/plugin/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/plugin/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInitCostTime()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->l:I

    return v0
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

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    if-nez v0, :cond_e

    const-class v0, Lcom/qq/e/comm/pi/POFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/comm/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/POFactory;

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    :cond_e
    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->k:Lcom/qq/e/comm/pi/POFactory;

    return-object v0
.end method

.method public getPluginVersion()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->e:I

    return v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/qq/e/comm/managers/plugin/PM;->i:Z

    if-eqz v0, :cond_15

    new-instance v0, Lcom/qq/e/comm/managers/plugin/b;

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/PM;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/PM;->m:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    invoke-virtual {v0, v1}, Lcom/qq/e/comm/managers/plugin/b;->a(Lcom/qq/e/comm/managers/plugin/PM$a$b;)V

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/plugin/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
