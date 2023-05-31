.class Lcom/tencent/smtt/sdk/am;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field static final c:Ljava/io/FileFilter;

.field private static d:Lcom/tencent/smtt/sdk/am;

.field private static final i:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final j:Ljava/util/concurrent/locks/Lock;

.field private static l:Ljava/nio/channels/FileLock;

.field private static m:Landroid/os/Handler;

.field private static final n:[[Ljava/lang/Long;

.field private static o:I

.field private static p:Z


# instance fields
.field private e:I

.field private f:Ljava/nio/channels/FileLock;

.field private g:Ljava/io/FileOutputStream;

.field private h:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v1, 0x0

    const-wide/32 v10, 0x25486f8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/am;->d:Lcom/tencent/smtt/sdk/am;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    sput-object v1, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/sdk/an;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/an;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    sput-object v1, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/Long;

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/32 v2, 0xabe6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/32 v2, 0xabe5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Long;

    const-wide/32 v2, 0xab86

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/32 v2, 0x251d6b8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xabfb

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xabfc

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xabfd

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xabfe

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xac00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xac01

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xac02

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/Long;

    const-wide/32 v4, 0xab85

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-wide/32 v4, 0x251d6b8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/smtt/sdk/am;->n:[[Ljava/lang/Long;

    sput-boolean v6, Lcom/tencent/smtt/sdk/am;->b:Z

    new-instance v0, Lcom/tencent/smtt/sdk/ao;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/ao;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->c:Ljava/io/FileFilter;

    sput v6, Lcom/tencent/smtt/sdk/am;->o:I

    sput-boolean v6, Lcom/tencent/smtt/sdk/am;->p:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/smtt/sdk/am;->e:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/am;->h:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/am;->k:Z

    sget-object v0, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/tencent/smtt/sdk/ap;

    invoke-static {}, Lcom/tencent/smtt/sdk/al;->a()Lcom/tencent/smtt/sdk/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/al;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/ap;-><init>(Lcom/tencent/smtt/sdk/am;Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    :cond_1d
    return-void
.end method

.method private A(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromUnzip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "TbsInstaller"

    const-string v1, "get rename fileLock#4 ## failed!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    :try_start_16
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->C(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->D(Landroid/content/Context;)V

    const-string v0, "TbsInstaller"

    const-string v1, "after renameTbsCoreShareDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_bb

    const-string v0, "TbsInstaller"

    const-string v1, "prepare to shareTbsCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    :goto_33
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, "incrupdate_retry_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->c(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_decouplecoreversion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_ec

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_ec

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_ec

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->o(Landroid/content/Context;)Z

    :cond_9b
    :goto_9b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->n(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    :cond_a9
    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/smtt/sdk/am;->o:I
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_b6} :catch_c4

    :goto_b6
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->g(Landroid/content/Context;)V

    goto/16 :goto_15

    :cond_bb
    :try_start_bb
    const-string v0, "TbsInstaller"

    const-string v1, "is thirdapp and not chmod"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c2} :catch_c4

    goto/16 :goto_33

    :catch_c4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xdb

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception when renameing from unzip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromUnzip Exception"

    invoke-static {v0, v1, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b6

    :cond_ec
    :try_start_ec
    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller--generateNewTbsCoreFromUnzip #1 deCoupleCoreVersion is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_124} :catch_c4

    goto/16 :goto_9b
.end method

.method private B(Landroid/content/Context;)V
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromCopy"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "TbsInstaller"

    const-string v1, "get rename fileLock#4 ## failed!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    :try_start_15
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->C(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->E(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_decouplecoreversion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_61

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_61

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_61

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->o(Landroid/content/Context;)Z

    :cond_53
    :goto_53
    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5d} :catch_9a

    :goto_5d
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->g(Landroid/content/Context;)V

    goto :goto_14

    :cond_61
    :try_start_61
    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller--generateNewTbsCoreFromCopy #1 deCoupleCoreVersion is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_99} :catch_9a

    goto :goto_53

    :catch_9a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xdb

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception when renameing from copy:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_5d
.end method

.method private C(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--deleteOldCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    return-void
.end method

.method private D(Landroid/content/Context;)V
    .registers 5

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameShareDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_13

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz p1, :cond_39

    const-string v1, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz v0, :cond_3e

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe6

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :cond_39
    :goto_39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    goto :goto_13

    :cond_3e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe7

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_39
.end method

.method private E(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameTbsCoreCopyDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_13

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    goto :goto_13
.end method

.method private F(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--clearNewTbsCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    :cond_11
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->c(I)V

    const-string v0, "TbsInstaller::clearNewTbsCore forceSysWebViewInner!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized a()Lcom/tencent/smtt/sdk/am;
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/am;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/am;->d:Lcom/tencent/smtt/sdk/am;

    if-nez v0, :cond_16

    const-class v2, Lcom/tencent/smtt/sdk/am;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    :try_start_a
    sget-object v0, Lcom/tencent/smtt/sdk/am;->d:Lcom/tencent/smtt/sdk/am;

    if-nez v0, :cond_15

    new-instance v0, Lcom/tencent/smtt/sdk/am;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/am;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/am;->d:Lcom/tencent/smtt/sdk/am;

    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    :cond_16
    :try_start_16
    sget-object v0, Lcom/tencent/smtt/sdk/am;->d:Lcom/tencent/smtt/sdk/am;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;Landroid/content/Context;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Local tbs apk("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is deleted!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v3, "core_unzip_tmp"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_74

    new-instance v0, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    :try_start_44
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4e} :catch_7f
    .catchall {:try_start_44 .. :try_end_4e} :catchall_99

    :try_start_4e
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5b} :catch_b9
    .catchall {:try_start_4e .. :try_end_5b} :catchall_b0

    :try_start_5b
    const-string v0, "tbs_local_installation"

    const-string v2, "true"

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v2, "TBS_LOCAL_INSTALLATION is set!"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6e} :catch_bd
    .catchall {:try_start_5b .. :try_end_6e} :catchall_b2

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_75

    :goto_71
    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7a

    :cond_74
    :goto_74
    return-void

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_71

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    :catch_7f
    move-exception v0

    move-object v1, v2

    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_b5

    if-eqz v1, :cond_89

    :try_start_86
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_94

    :cond_89
    :goto_89
    if-eqz v2, :cond_74

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_74

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    :catchall_99
    move-exception v0

    move-object v3, v2

    :goto_9b
    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a6

    :cond_a0
    :goto_a0
    if-eqz v3, :cond_a5

    :try_start_a2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ab

    :cond_a5
    :goto_a5
    throw v0

    :catch_a6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    :catch_ab
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    :catchall_b0
    move-exception v0

    goto :goto_9b

    :catchall_b2
    move-exception v0

    move-object v2, v1

    goto :goto_9b

    :catchall_b5
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_9b

    :catch_b9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_81

    :catch_bd
    move-exception v0

    move-object v2, v3

    goto :goto_81
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    const/16 v3, 0x1a1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/am;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "core_unzip_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_TBS_UNZIP_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_UNZIP_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v0, "core_share_backup_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_BACKUP_TBSCORE_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_BACKUP_TBSCORE_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_44
    const-string v0, "core_copy_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "TMP_TBS_COPY_FOLDER_NAME"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_COPY_FOLDER_NAME"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private a(Landroid/content/Context;Landroid/content/Context;I)V
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20c

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller-copyTbsCoreInThread start!  tbsCoreTargetVer is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_60

    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_34
    const-string v1, "tbs_precheck_disable_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p3, :cond_67

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-copyTbsCoreInThread -- version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled by preload_x5_check!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_12

    :cond_60
    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p2, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_34

    :cond_67
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x20e

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_12

    :cond_77
    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const-string v1, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-copyTbsCoreInThread #1 locked is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_570

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_99
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v3, "copy_core_ver"

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v4, "copy_status"

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v3, p3, :cond_ce

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0xdc

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x210

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_bf} :catch_590
    .catchall {:try_start_99 .. :try_end_bf} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_c9
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_12

    :cond_ce
    :try_start_ce
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v4

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-copyTbsCoreInThread tbsCoreInstalledVer="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, p3, :cond_117

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0xdc

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x210

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller-copyTbsCoreInThread return have same version is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_10c} :catch_590
    .catchall {:try_start_ce .. :try_end_10c} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_c9

    :cond_117
    :try_start_117
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/ai;->b()I

    move-result v7

    if-lez v7, :cond_123

    if-gt p3, v7, :cond_127

    :cond_123
    if-lez v3, :cond_12a

    if-le p3, v3, :cond_12a

    :cond_127
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->p(Landroid/content/Context;)V

    :cond_12a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_142

    if-lez v4, :cond_142

    if-gt p3, v4, :cond_136

    const v3, 0x54c5638

    if-ne p3, v3, :cond_142

    :cond_136
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->p(Landroid/content/Context;)V

    const-string v0, "TbsInstaller"

    const-string v3, "TbsInstaller-copyTbsCoreInThread -- update TBS....."

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v2

    :cond_142
    invoke-static {p2}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18b

    invoke-static {}, Lcom/tencent/smtt/utils/y;->a()J

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v6, -0x211

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v6, 0xd2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rom is not enough when copying tbs core! curAvailROM="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minReqRom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_17f} :catch_590
    .catchall {:try_start_117 .. :try_end_17f} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_18b
    if-lez v0, :cond_1cc

    :try_start_18d
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a8

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1a8

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_1cc

    :cond_1a8
    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller-copyTbsCoreInThread return have copied is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1c0} :catch_590
    .catchall {:try_start_18d .. :try_end_1c0} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_1cc
    if-nez v0, :cond_206

    :try_start_1ce
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v2, "copy_retry_num"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1fb

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v2, 0xd3

    const-string v3, "exceed copy retry num!"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x212

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1ef} :catch_590
    .catchall {:try_start_1ce .. :try_end_1ef} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_1fb
    :try_start_1fb
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "copy_retry_num"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    :cond_206
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2b2

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2ac

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_222} :catch_590
    .catchall {:try_start_1fb .. :try_end_222} :catchall_4c0

    move-result-object v4

    :goto_223
    if-eqz v0, :cond_519

    if-eqz v4, :cond_519

    :try_start_227
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/tencent/smtt/sdk/ai;->a(II)V

    new-instance v1, Lcom/tencent/smtt/utils/x;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/x;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/x;->a(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x227

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget-object v7, Lcom/tencent/smtt/sdk/am;->c:Ljava/io/FileFilter;

    invoke-static {v0, v4, v7}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v7

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloaddecouplecore"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_25c

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V

    :cond_25c
    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TbsInstaller-copyTbsCoreInThread time="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_4f1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/x;->b(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/x;->a()Z

    move-result v0

    if-nez v0, :cond_2b8

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread copy-verify fail!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "TbsCopy-Verify fail after copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x213

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_2a0} :catch_381
    .catchall {:try_start_227 .. :try_end_2a0} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_2ac
    :try_start_2ac
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    goto/16 :goto_223

    :cond_2b2
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->w(Landroid/content/Context;)Ljava/io/File;
    :try_end_2b5
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2b5} :catch_590
    .catchall {:try_start_2ac .. :try_end_2b5} :catchall_4c0

    move-result-object v4

    goto/16 :goto_223

    :cond_2b8
    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_2ba
    new-instance v0, Ljava/io/File;

    const-string v1, "1"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_2c6
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2c6} :catch_36c
    .catchall {:try_start_2ba .. :try_end_2c6} :catchall_37a

    :try_start_2c6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_368

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2d6} :catch_597
    .catchall {:try_start_2c6 .. :try_end_2d6} :catchall_37a

    :try_start_2d6
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2d9} :catch_59b
    .catchall {:try_start_2d6 .. :try_end_2d9} :catchall_593

    move v0, v5

    :goto_2da
    if-eqz v2, :cond_2df

    :try_start_2dc
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_2df} :catch_58a
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2df} :catch_381
    .catchall {:try_start_2dc .. :try_end_2df} :catchall_4c0

    :cond_2df
    :goto_2df
    move v2, v0

    :goto_2e0
    if-eqz v2, :cond_3df

    :try_start_2e2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x228

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    move v0, v6

    :goto_2f0
    array-length v7, v3

    if-ge v0, v7, :cond_3df

    aget-object v7, v3, v0

    const-string v8, "1"

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_365

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_365

    const-string v8, "tbs.conf"

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_365

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_365

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".prof"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_365

    invoke-static {v7}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b2

    const-string v8, "TbsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "md5_check_success for ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_365} :catch_381
    .catchall {:try_start_2e2 .. :try_end_365} :catchall_4c0

    :cond_365
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f0

    :cond_368
    move-object v2, v3

    move v0, v6

    goto/16 :goto_2da

    :catch_36c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_36f
    :try_start_36f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_372
    .catchall {:try_start_36f .. :try_end_372} :catchall_593

    if-eqz v2, :cond_377

    :try_start_374
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_377
    .catch Ljava/io/IOException; {:try_start_374 .. :try_end_377} :catch_584
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_377} :catch_381
    .catchall {:try_start_374 .. :try_end_377} :catchall_4c0

    :cond_377
    :goto_377
    move v2, v5

    goto/16 :goto_2e0

    :catchall_37a
    move-exception v0

    :goto_37b
    if-eqz v3, :cond_380

    :try_start_37d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_380
    .catch Ljava/io/IOException; {:try_start_37d .. :try_end_380} :catch_57e
    .catch Ljava/lang/Exception; {:try_start_37d .. :try_end_380} :catch_381
    .catchall {:try_start_37d .. :try_end_380} :catchall_4c0

    :cond_380
    :goto_380
    :try_start_380
    throw v0
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_381} :catch_381
    .catchall {:try_start_380 .. :try_end_381} :catchall_4c0

    :catch_381
    move-exception v0

    move-object v1, v4

    :goto_383
    :try_start_383
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x219

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_399
    .catchall {:try_start_383 .. :try_end_399} :catchall_4c0

    const/4 v0, 0x0

    :try_start_39a
    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(II)V
    :try_end_3a6
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3a6} :catch_547
    .catchall {:try_start_39a .. :try_end_3a6} :catchall_4c0

    :goto_3a6
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_3b2
    :try_start_3b2
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "md5_check_failure for ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") targetMd5:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", realMd5:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    :cond_3df
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "copyTbsCoreInThread - md5_check_success:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_422

    if-nez v5, :cond_422

    const-string v0, "TbsInstaller"

    const-string v1, "copyTbsCoreInThread - md5 incorrect -> delete destTmpDir!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "TbsCopy-Verify md5 fail after copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x214

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_416} :catch_381
    .catchall {:try_start_3b2 .. :try_end_416} :catchall_4c0

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_422
    :try_start_422
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread success!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ag;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_449

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_449

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b1

    const-string v0, "x5.oversea.tbs.org"

    :goto_443
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/File;Landroid/content/Context;)V

    :cond_449
    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/tencent/smtt/sdk/ai;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/am;->k:Z

    if-eqz v0, :cond_4b4

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xdc

    const-string v2, "continueInstallWithout core success"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_460
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x215

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-copyTbsCoreInThread success -- version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4cf

    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_489
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_489} :catch_381
    .catchall {:try_start_422 .. :try_end_489} :catchall_4c0

    move-result-object v0

    :goto_48a
    :try_start_48a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_preload_x5_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tbs_preload_x5_recorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tbs_preload_x5_version"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4a2
    .catch Ljava/lang/Throwable; {:try_start_48a .. :try_end_4a2} :catch_4d7
    .catch Ljava/lang/Exception; {:try_start_48a .. :try_end_4a2} :catch_381
    .catchall {:try_start_48a .. :try_end_4a2} :catchall_4c0

    :goto_4a2
    :try_start_4a2
    invoke-static {p2}, Lcom/tencent/smtt/utils/y;->a(Landroid/content/Context;)Z
    :try_end_4a5
    .catch Ljava/lang/Exception; {:try_start_4a2 .. :try_end_4a5} :catch_381
    .catchall {:try_start_4a2 .. :try_end_4a5} :catchall_4c0

    :cond_4a5
    :goto_4a5
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_c9

    :cond_4b1
    :try_start_4b1
    const-string v0, "x5.tbs.org"

    goto :goto_443

    :cond_4b4
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xdc

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_4bf
    .catch Ljava/lang/Exception; {:try_start_4b1 .. :try_end_4bf} :catch_381
    .catchall {:try_start_4b1 .. :try_end_4bf} :catchall_4c0

    goto :goto_460

    :catchall_4c0
    move-exception v0

    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v1, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    throw v0

    :cond_4cf
    :try_start_4cf
    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_48a

    :catch_4d7
    move-exception v0

    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init tbs_preload_x5_counter#2 exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a2

    :cond_4f1
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-copyTbsCoreInThread fail!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/tencent/smtt/sdk/ai;->a(II)V

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x216

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd4

    const-string v2, "copy fail!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_4a5

    :cond_519
    if-nez v0, :cond_52f

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd5

    const-string v2, "src-dir is null when copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x217

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :cond_52f
    if-nez v4, :cond_4a5

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xd6

    const-string v2, "dst-dir is null when copying tbs core!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x218

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_545
    .catch Ljava/lang/Exception; {:try_start_4cf .. :try_end_545} :catch_381
    .catchall {:try_start_4cf .. :try_end_545} :catchall_4c0

    goto/16 :goto_4a5

    :catch_547
    move-exception v0

    :try_start_548
    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsInstaller-copyTbsCoreInThread] delete dstTmpDir throws exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56e
    .catchall {:try_start_548 .. :try_end_56e} :catchall_4c0

    goto/16 :goto_3a6

    :cond_570
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21a

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_12

    :catch_57e
    move-exception v1

    :try_start_57f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_380

    :catch_584
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_377

    :catch_58a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58e
    .catch Ljava/lang/Exception; {:try_start_57f .. :try_end_58e} :catch_381
    .catchall {:try_start_57f .. :try_end_58e} :catchall_4c0

    goto/16 :goto_2df

    :catch_590
    move-exception v0

    goto/16 :goto_383

    :catchall_593
    move-exception v0

    move-object v3, v2

    goto/16 :goto_37b

    :catch_597
    move-exception v0

    move-object v2, v3

    goto/16 :goto_36f

    :catch_59b
    move-exception v0

    goto/16 :goto_36f
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/am;Landroid/content/Context;Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/am;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Z)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v1, "TbsInstaller"

    const-string v3, "TbsInstaller-unzipTbs start"

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/smtt/utils/k;->c(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xcc

    const-string v3, "apk is invalid!"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x208

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :goto_23
    return v0

    :cond_24
    :try_start_24
    const-string v1, "tbs"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    if-eqz p3, :cond_6a

    new-instance v1, Ljava/io/File;

    const-string v4, "core_share_decouple"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloaddecouplecore"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_4c

    invoke-static {v1}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_4c} :catch_72

    :cond_4c
    :goto_4c
    if-eqz p3, :cond_8c

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->v(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    move-object v4, v1

    :goto_53
    if-nez v4, :cond_92

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xcd

    const-string v3, "tmp unzip dir is null!"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x209

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_23

    :cond_6a
    :try_start_6a
    new-instance v1, Ljava/io/File;

    const-string v4, "core_unzip_tmp"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_71} :catch_72

    goto :goto_34

    :catch_72
    move-exception v1

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-unzipTbs -- delete unzip folder if exists exception"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_8c
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    move-object v4, v1

    goto :goto_53

    :cond_92
    :try_start_92
    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;)Z

    if-eqz p3, :cond_9b

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    :cond_9b
    invoke-static {p2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-direct {p0, v4, p1}, Lcom/tencent/smtt/sdk/am;->a(Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    :cond_a5
    if-eqz p3, :cond_d6

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    move v3, v0

    :goto_ac
    array-length v6, v5

    if-ge v3, v6, :cond_c8

    new-instance v6, Ljava/io/File;

    aget-object v7, v5, v3

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_c5} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c5} :catch_15f
    .catchall {:try_start_92 .. :try_end_c5} :catchall_19e

    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    :cond_c8
    :try_start_c8
    invoke-static {p1}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    const-string v6, "x5.tbs"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d6} :catch_1db
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d6} :catch_11b
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_19e

    :cond_d6
    :goto_d6
    if-nez v1, :cond_106

    :try_start_d8
    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x20a

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#1! exist:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_fc} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fc} :catch_15f
    .catchall {:try_start_d8 .. :try_end_fc} :catchall_19e

    :cond_fc
    :goto_fc
    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_23

    :cond_106
    const/4 v3, 0x1

    :try_start_107
    invoke-direct {p0, p1, v3}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    if-eqz p3, :cond_fc

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_11a} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11a} :catch_15f
    .catchall {:try_start_107 .. :try_end_11a} :catchall_19e

    goto :goto_fc

    :catch_11b
    move-exception v1

    :try_start_11c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x20b

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v5, 0xce

    invoke-virtual {v3, v5, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    if-eqz v4, :cond_1e0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_133
    .catchall {:try_start_11c .. :try_end_133} :catchall_19e

    move-result v1

    if-eqz v1, :cond_1e0

    move v1, v2

    :goto_137
    if-eqz v1, :cond_156

    if-eqz v4, :cond_156

    :try_start_13b
    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_13b .. :try_end_156} :catch_1a7

    :cond_156
    :goto_156
    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    :goto_15a
    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_15f
    move-exception v1

    :try_start_160
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x20b

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v5, 0xcf

    invoke-virtual {v3, v5, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    if-eqz v4, :cond_1de

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_177
    .catchall {:try_start_160 .. :try_end_177} :catchall_19e

    move-result v1

    if-eqz v1, :cond_1de

    :goto_17a
    if-eqz v2, :cond_199

    if-eqz v4, :cond_199

    :try_start_17e
    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_17e .. :try_end_199} :catch_1c1

    :cond_199
    :goto_199
    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    goto :goto_15a

    :catchall_19e
    move-exception v0

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-unzipTbs done"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1a7
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_156

    :catch_1c1
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_199

    :catch_1db
    move-exception v3

    goto/16 :goto_d6

    :cond_1de
    move v2, v0

    goto :goto_17a

    :cond_1e0
    move v1, v0

    goto/16 :goto_137
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "tbs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-isPrepareTbsCore, #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return v0

    :cond_1a
    new-instance v1, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-isPrepareTbsCore, #2"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_2f
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-isPrepareTbsCore, #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_19
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)Z
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "finalCheckForTbsCoreValidity - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    new-instance v1, Ljava/io/File;

    const-string v0, "1"

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_dd
    .catchall {:try_start_21 .. :try_end_2d} :catchall_eb

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d9

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_15b
    .catchall {:try_start_2d .. :try_end_3d} :catchall_eb

    :try_start_3d
    invoke-virtual {v0, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_15d
    .catchall {:try_start_3d .. :try_end_40} :catchall_158

    move v1, v2

    :goto_41
    if-eqz v5, :cond_46

    :try_start_43
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_152

    :cond_46
    :goto_46
    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "finalCheckForTbsCoreValidity - need_check:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_160

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move v3, v4

    :goto_61
    array-length v6, v5

    if-ge v3, v6, :cond_160

    aget-object v6, v5, v3

    const-string v7, "1"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d6

    const-string v7, "tbs.conf"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_d6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".prof"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d6

    invoke-static {v6}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f2

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "md5_check_success for ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d6
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_d9
    move-object v5, v3

    move v1, v4

    goto/16 :goto_41

    :catch_dd
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_e0
    :try_start_e0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_eb

    if-eqz v3, :cond_e8

    :try_start_e5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_14d

    :cond_e8
    :goto_e8
    move v1, v2

    goto/16 :goto_46

    :catchall_eb
    move-exception v0

    :goto_ec
    if-eqz v3, :cond_f1

    :try_start_ee
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_148

    :cond_f1
    :goto_f1
    throw v0

    :cond_f2
    const-string v0, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "md5_check_failure for ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") targetMd5:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", realMd5:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_11f
    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "finalCheckForTbsCoreValidity - md5_check_success:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_13f

    if-nez v0, :cond_13f

    const-string v0, "TbsInstaller"

    const-string v1, "finalCheckForTbsCoreValidity - Verify failed after unzipping!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13e
    return v4

    :cond_13f
    const-string v0, "TbsInstaller"

    const-string v1, "finalCheckForTbsCoreValidity success!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_13e

    :catch_148
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f1

    :catch_14d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    :catch_152
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_46

    :catchall_158
    move-exception v0

    move-object v3, v5

    goto :goto_ec

    :catch_15b
    move-exception v1

    goto :goto_e0

    :catch_15d
    move-exception v1

    move-object v3, v5

    goto :goto_e0

    :cond_160
    move v0, v2

    goto :goto_11f
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v4, 0xc8

    const/4 v12, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f5

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "TbsInstaller"

    const-string v3, "isTbsLocalInstalled --> no installation!"

    invoke-static {v2, v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f6

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :goto_24
    return-void

    :cond_25
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-installTbsCoreInThread tbsApkPath="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-installTbsCoreInThread currentProcessId="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-installTbsCoreInThread currentThreadName="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_dc

    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_aa
    const-string v3, "tbs_precheck_disable_version"

    const/4 v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_e3

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-installTbsCoreInThread -- version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled by preload_x5_check!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f7

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_24

    :cond_dc
    const-string v2, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_aa

    :cond_e3
    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_122

    invoke-static {}, Lcom/tencent/smtt/utils/y;->a()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x1f8

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v6

    const/16 v7, 0xd2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rom is not enough when installing tbs core! curAvailROM="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minReqRom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto/16 :goto_24

    :cond_122
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_133

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1f9

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto/16 :goto_24

    :cond_133
    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "TbsInstaller-installTbsCoreInThread locked ="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_672

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fb

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_15d
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "copy_core_ver"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/ai;->b()I

    move-result v3

    const-string v5, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreCopyVer ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreInstallVer ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_1b3

    move/from16 v0, p3

    if-gt v0, v3, :cond_1b9

    :cond_1b3
    if-lez v2, :cond_1bc

    move/from16 v0, p3

    if-le v0, v2, :cond_1bc

    :cond_1b9
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->p(Landroid/content/Context;)V

    :cond_1bc
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v3

    const-string v5, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-installTbsCoreInThread installStatus1="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreInstalledVer="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_264

    if-ge v2, v12, :cond_264

    const-string v3, "TbsInstaller"

    const-string v5, "TbsInstaller-installTbsCoreInThread -- retry....."

    const/4 v8, 0x1

    invoke-static {v3, v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v7

    move v9, v2

    :goto_1fe
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fc

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-installTbsCoreInThread installStatus2="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v9, :cond_514

    const-string v2, "TbsInstaller"

    const-string v3, "STEP 2/2 begin installation....."

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fd

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    if-eqz v8, :cond_28d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "unzip_retry_num"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_284

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xc9

    const-string v4, "exceed unzip retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->F(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1fe

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_255
    .catchall {:try_start_15d .. :try_end_255} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_264
    const/4 v5, 0x3

    if-ne v2, v5, :cond_280

    if-lez v3, :cond_280

    move/from16 v0, p3

    if-gt v0, v3, :cond_274

    const v3, 0x54c5638

    move/from16 v0, p3

    if-ne v0, v3, :cond_280

    :cond_274
    const/4 v2, -0x1

    :try_start_275
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->p(Landroid/content/Context;)V

    const-string v3, "TbsInstaller"

    const-string v5, "TbsInstaller-installTbsCoreInThread -- update TBS....."

    const/4 v8, 0x1

    invoke-static {v3, v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_280
    move v8, v6

    move v9, v2

    goto/16 :goto_1fe

    :cond_284
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/ai;->b(I)V

    :cond_28d
    if-nez p2, :cond_2be

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "install_apk_path"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2bf

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xca

    const-string v4, "apk path is null!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1ff

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_2af
    .catchall {:try_start_275 .. :try_end_2af} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_2be
    move-object v2, p2

    :cond_2bf
    :try_start_2bf
    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "TbsInstaller-installTbsCoreInThread apkPath ="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2fc

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x200

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xcb

    const-string v4, "apk version is 0!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_2ed
    .catchall {:try_start_2bf .. :try_end_2ed} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_2fc
    :try_start_2fc
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    const-string v10, "install_apk_path"

    invoke-virtual {v3, v10, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v10, -0x224

    invoke-virtual {v3, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_downloaddecouplecore"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_34d

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_372

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xcf

    const-string v4, "unzipTbsApk failed"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    :try_end_33e
    .catchall {:try_start_2fc .. :try_end_33e} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_34d
    :try_start_34d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_372

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xcf

    const-string v4, "unzipTbsApk failed"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_363
    .catchall {:try_start_34d .. :try_end_363} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_372
    if-eqz v8, :cond_3d4

    :try_start_374
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "unlzma_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3cb

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xdf

    const-string v4, "exceed unlzma retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x229

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->F(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ag;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "request_full_package"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_3bc
    .catchall {:try_start_374 .. :try_end_3bc} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_3cb
    :try_start_3cb
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/ai;->d(I)V

    :cond_3d4
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma begin"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_responsecode"

    const/4 v10, 0x0

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_4cc

    const-string v2, "can_unlzma"

    const/4 v10, 0x0

    invoke-static {p1, v2, v10}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_680

    instance-of v10, v2, Ljava/lang/Boolean;

    if-eqz v10, :cond_680

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_401
    if-eqz v2, :cond_4cc

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v10, "responseCode"

    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_downloaddecouplecore"

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_454

    const-string v3, "unzip_temp_path"

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_429
    const-string v3, "unlzma"

    invoke-static {p1, v3, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_471

    const-string v2, "TbsInstaller"

    const-string v3, "unlzma return null"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xde

    const-string v10, "unlzma is null"

    invoke-virtual {v2, v3, v10}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_443
    .catchall {:try_start_3cb .. :try_end_443} :catchall_462

    :cond_443
    :goto_443
    if-nez v6, :cond_4cc

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_454
    :try_start_454
    const-string v3, "unzip_temp_path"

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_461
    .catchall {:try_start_454 .. :try_end_461} :catchall_462

    goto :goto_429

    :catchall_462
    move-exception v2

    sget-object v3, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v3, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    throw v2

    :cond_471
    :try_start_471
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_499

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_486

    const-string v2, "TbsInstaller"

    const-string v3, "unlzma success"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_443

    :cond_486
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma return false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xde

    const-string v10, "unlzma return false"

    invoke-virtual {v2, v3, v10}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_443

    :cond_499
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_49f

    move v6, v7

    goto :goto_443

    :cond_49f
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_443

    const-string v10, "TbsInstaller"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v3, "unlzma failure because Throwable"

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Ljava/lang/Throwable;

    move-object v3, v0

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v10, 0xde

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v3, v10, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    goto/16 :goto_443

    :cond_4cc
    const-string v2, "TbsInstaller"

    const-string v3, "unlzma finished"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    move v2, v5

    :goto_4dc
    if-ge v9, v12, :cond_668

    if-eqz v8, :cond_56a

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    const-string v5, "dexopt_retry_num"

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_561

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd0

    const-string v4, "exceed dexopt retry num!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x202

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->F(Landroid/content/Context;)V
    :try_end_505
    .catchall {:try_start_471 .. :try_end_505} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_514
    :try_start_514
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_55e

    if-nez p2, :cond_554

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "install_apk_path"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_555

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xca

    const-string v4, "apk path is null!"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x1ff

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_545
    .catchall {:try_start_514 .. :try_end_545} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_554
    move-object v2, p2

    :cond_555
    :try_start_555
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    :cond_55e
    move v2, v6

    goto/16 :goto_4dc

    :cond_561
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/tencent/smtt/sdk/ai;->a(I)V

    :cond_56a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x225

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_592

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x203

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_583
    .catchall {:try_start_555 .. :try_end_583} :catchall_462

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_592
    :try_start_592
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v5}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    const-string v2, "TbsInstaller"

    const-string v3, "STEP 2/2 installation completed! you can restart!"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "STEP 2/2 installation completed! you can restart! version:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x204

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_625

    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_5cd
    .catchall {:try_start_592 .. :try_end_5cd} :catchall_462

    move-result-object v2

    :goto_5ce
    :try_start_5ce
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tbs_preload_x5_counter"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "tbs_preload_x5_recorder"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "tbs_preload_x5_version"

    move/from16 v0, p3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x205

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_5f1
    .catch Ljava/lang/Throwable; {:try_start_5ce .. :try_end_5f1} :catch_62d
    .catchall {:try_start_5ce .. :try_end_5f1} :catchall_462

    :goto_5f1
    const v2, 0x54c5638

    move/from16 v0, p3

    if-ne v0, v2, :cond_5fd

    :try_start_5f8
    move/from16 v0, p3

    invoke-direct {p0, v0, p2, p1}, Lcom/tencent/smtt/sdk/am;->a(ILjava/lang/String;Landroid/content/Context;)V

    :cond_5fd
    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/am;->k:Z

    if-eqz v2, :cond_650

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/ai;->d()I

    move-result v3

    if-ne v3, v7, :cond_611

    const/16 v4, 0xdd

    :cond_611
    const-string v3, "continueInstallWithout core success"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_616
    .catchall {:try_start_5f8 .. :try_end_616} :catchall_462

    :cond_616
    :goto_616
    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_625
    :try_start_625
    const-string v2, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_5ce

    :catch_62d
    move-exception v2

    const-string v3, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Init tbs_preload_x5_counter#1 exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x206

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_5f1

    :cond_650
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ai;->d()I

    move-result v2

    if-ne v2, v7, :cond_666

    const/16 v2, 0xdd

    :goto_660
    const-string v4, "success"

    invoke-virtual {v3, v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_616

    :cond_666
    move v2, v4

    goto :goto_660

    :cond_668
    if-ne v9, v12, :cond_616

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v3, 0xc8

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V
    :try_end_671
    .catchall {:try_start_625 .. :try_end_671} :catchall_462

    goto :goto_616

    :cond_672
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x207

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_24

    :cond_680
    move v2, v6

    goto/16 :goto_401
.end method

.method private b(Landroid/content/Context;Ljava/io/File;)Z
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/tencent/smtt/sdk/au;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/au;-><init>(Lcom/tencent/smtt/sdk/am;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.tencent.tbs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_5e

    move-result v1

    if-eqz v1, :cond_28

    const-wide/16 v4, 0x1388

    :try_start_25
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_77

    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move v1, v0

    :goto_2d
    if-ge v1, v3, :cond_5c

    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "jarFile: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ldalvik/system/DexClassLoader;

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_59} :catch_5e

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_5c
    const/4 v0, 0x1

    :goto_5d
    return v0

    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catch_77
    move-exception v1

    goto :goto_28
.end method

.method private c(Landroid/content/Context;Ljava/io/File;)Z
    .registers 13

    const/16 v9, 0xe2

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "tbs_sdk_extension_dex.jar"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.dex"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xe2

    const-string v3, "can not find oat command"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_3c
    return v0

    :cond_3d
    new-instance v1, Lcom/tencent/smtt/sdk/av;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/av;-><init>(Lcom/tencent/smtt/sdk/am;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_48
    if-ge v1, v4, :cond_a4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs_sdk_extension_dex"

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/system/bin/dex2oat "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --dex-location="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a1} :catch_a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_a4
    const/4 v0, 0x1

    goto :goto_3c

    :catch_a6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    goto :goto_3c
.end method

.method private declared-synchronized c(Landroid/content/Context;Z)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_3
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a6

    :try_start_a
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_7e
    .catchall {:try_start_a .. :try_end_d} :catchall_a4

    move-result v2

    if-nez v2, :cond_12

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-enableTbsCoreFromCopy Locked ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2c} :catch_7e
    .catchall {:try_start_12 .. :try_end_2c} :catchall_a4

    if-eqz v2, :cond_7a

    :try_start_2e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v3, "copy_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/tencent/smtt/sdk/am;->a(ZLandroid/content/Context;)I

    move-result v3

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy copyStatus ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v1, :cond_c3

    if-nez v3, :cond_a9

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer = 0"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->B(Landroid/content/Context;)V
    :try_end_74
    .catchall {:try_start_2e .. :try_end_74} :catchall_b7

    :goto_74
    :try_start_74
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_79} :catch_be
    .catchall {:try_start_74 .. :try_end_79} :catchall_a4

    move v0, v1

    :cond_7a
    :try_start_7a
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_7e
    .catchall {:try_start_7a .. :try_end_7d} :catchall_a4

    goto :goto_10

    :catch_7e
    move-exception v1

    :goto_7f
    :try_start_7f
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xd7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller::enableTbsCoreFromCopy exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_7f .. :try_end_a2} :catchall_a4

    goto/16 :goto_10

    :catchall_a4
    move-exception v0

    :try_start_a5
    throw v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a9
    if-eqz p2, :cond_c3

    :try_start_ab
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer != 0"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->B(Landroid/content/Context;)V
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_b7

    goto :goto_74

    :catchall_b7
    move-exception v1

    :try_start_b8
    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_be} :catch_7e
    .catchall {:try_start_b8 .. :try_end_be} :catchall_a4

    :catch_be
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_7f

    :cond_c3
    move v1, v0

    goto :goto_74
.end method

.method private declared-synchronized d(Landroid/content/Context;Z)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_22

    :try_start_5
    const-string v2, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xe5

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :cond_22
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-enableTbsCoreFromUnzip canRenameTmpDir ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    const-string v3, "Tbsinstaller enableTbsCoreFromUnzip #1 "

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_c1

    :try_start_3d
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_aa
    .catchall {:try_start_3d .. :try_end_40} :catchall_c1

    move-result v2

    if-nez v2, :cond_45

    :goto_43
    monitor-exit p0

    return v0

    :cond_45
    :try_start_45
    const-string v2, "TbsInstaller"

    const-string v3, "Tbsinstaller enableTbsCoreFromUnzip #2 "

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip locked="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_aa
    .catchall {:try_start_45 .. :try_end_66} :catchall_c1

    if-eqz v2, :cond_a6

    :try_start_68
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip installStatus="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/tencent/smtt/sdk/am;->a(ZLandroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_de

    const-string v2, "TbsInstaller"

    const-string v4, "Tbsinstaller enableTbsCoreFromUnzip #4 "

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_c4

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer = 0"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->A(Landroid/content/Context;)V
    :try_end_a0
    .catchall {:try_start_68 .. :try_end_a0} :catchall_d2

    :goto_a0
    :try_start_a0
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_d9
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_c1

    move v0, v1

    :cond_a6
    :try_start_a6
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_c1

    goto :goto_43

    :catch_aa
    move-exception v1

    :goto_ab
    :try_start_ab
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller::enableTbsCoreFromUnzip Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_c1

    goto :goto_43

    :catchall_c1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c4
    if-eqz p2, :cond_de

    :try_start_c6
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer != 0"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/am;->A(Landroid/content/Context;)V
    :try_end_d1
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_d2

    goto :goto_a0

    :catchall_d2
    move-exception v1

    :try_start_d3
    sget-object v2, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d9} :catch_aa
    .catchall {:try_start_d3 .. :try_end_d9} :catchall_c1

    :catch_d9
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_ab

    :cond_de
    move v1, v0

    goto :goto_a0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_e

    move-result-object v1

    :goto_a
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    :catch_e
    move-exception v1

    const/4 v1, 0x0

    goto :goto_a
.end method

.method private declared-synchronized e(Landroid/content/Context;Z)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method private f(Landroid/content/Context;Z)V
    .registers 8

    const/16 v4, 0xe1

    if-nez p1, :cond_e

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const-string v1, "setTmpFolderCoreToRead context is null"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    :try_start_e
    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tmp_folder_core_to_read.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_52

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_d

    :catch_28
    move-exception v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTmpFolderCoreToRead Exception message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception cause is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_d

    :cond_52
    :try_start_52
    invoke-static {v1}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_28

    goto :goto_d
.end method

.method private f(Landroid/content/Context;I)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-doTbsDexOpt start - dirMode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_ca

    :try_start_19
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "doDexoptOrDexoat mode error: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_2e
    :goto_2e
    return v2

    :pswitch_2f
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_downloaddecouplecore"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_2e

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41} :catch_7f

    move-result-object v0

    :goto_42
    :try_start_42
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4f} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_7f

    move-result v1

    if-eqz v1, :cond_a2

    move v1, v2

    :goto_53
    move v4, v1

    :goto_54
    :try_start_54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v1, v5, :cond_b0

    move v1, v2

    :goto_5b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_stop_preoat"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_6f

    if-eqz v1, :cond_6f

    if-nez v5, :cond_6f

    move v3, v2

    :cond_6f
    if-eqz v3, :cond_b2

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const-string v0, "TbsInstaller"

    const-string v1, "doTbsDexOpt -- doDexoatForArtVm"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7e} :catch_7f

    goto :goto_2e

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v3, 0xd1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_90
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :pswitch_98
    :try_start_98
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_42

    :pswitch_9d
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_42

    :cond_a2
    move v1, v3

    goto :goto_53

    :catch_a4
    move-exception v1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xe2

    invoke-virtual {v4, v5, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    move v4, v3

    goto :goto_54

    :cond_b0
    move v1, v3

    goto :goto_5b

    :cond_b2
    if-eqz v4, :cond_bc

    const-string v0, "TbsInstaller"

    const-string v1, "doTbsDexOpt -- is ART mode, skip!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_bc
    const-string v1, "TbsInstaller"

    const-string v3, "doTbsDexOpt -- doDexoptForDavlikVM"

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_c6} :catch_7f

    move-result v2

    goto/16 :goto_2e

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_98
        :pswitch_9d
    .end packed-switch
.end method

.method static t(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_private"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method private static y(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_c

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-getTmpFolderCoreToRead, #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return v0

    :cond_c
    :try_start_c
    const-string v2, "tbs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "tmp_folder_core_to_read.conf"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-getTmpFolderCoreToRead, #2"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    goto :goto_b

    :catch_28
    move-exception v1

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-getTmpFolderCoreToRead, #4"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_31
    :try_start_31
    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-getTmpFolderCoreToRead, #3"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_28

    move v0, v1

    goto :goto_b
.end method

.method private z(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const-string v0, "TbsInstaller"

    const-string v2, "Tbsinstaller getTbsCoreRenameFileLock #1 "

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockEnable()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_3d

    move-result v0

    :goto_10
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tbsinstaller getTbsCoreRenameFileLock #2  enabled is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_40

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    :goto_30
    sget-object v0, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_47

    const-string v0, "TbsInstaller"

    const-string v1, "getTbsCoreRenameFileLock## failed!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3c
    return v1

    :catch_3d
    move-exception v0

    move v0, v1

    goto :goto_10

    :cond_40
    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->f(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    goto :goto_30

    :cond_47
    const-string v0, "TbsInstaller"

    const-string v2, "Tbsinstaller getTbsCoreRenameFileLock true "

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v2, 0x0

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_53
    .catchall {:try_start_5 .. :try_end_14} :catchall_4c

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v2, :cond_3

    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_3

    :catch_1d
    move-exception v1

    goto :goto_3

    :cond_1f
    :try_start_1f
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_53
    .catchall {:try_start_1f .. :try_end_2e} :catchall_4c

    :try_start_2e
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const-string v2, "tbs_core_version"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_39} :catch_60
    .catchall {:try_start_2e .. :try_end_39} :catchall_5d

    move-result-object v2

    if-nez v2, :cond_42

    if-eqz v1, :cond_3

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_1d

    goto :goto_3

    :cond_42
    :try_start_42
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_60
    .catchall {:try_start_42 .. :try_end_45} :catchall_5d

    move-result v0

    if-eqz v1, :cond_3

    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_1d

    goto :goto_3

    :catchall_4c
    move-exception v0

    :goto_4d
    if-eqz v2, :cond_52

    :try_start_4f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5b

    :cond_52
    :goto_52
    throw v0

    :catch_53
    move-exception v1

    move-object v1, v2

    :goto_55
    if-eqz v1, :cond_3

    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_1d

    goto :goto_3

    :catch_5b
    move-exception v1

    goto :goto_52

    :catchall_5d
    move-exception v0

    move-object v2, v1

    goto :goto_4d

    :catch_60
    move-exception v2

    goto :goto_55
.end method

.method public a(ZLandroid/content/Context;)I
    .registers 5

    if-nez p1, :cond_10

    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1d

    :cond_10
    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1d
    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method a(Landroid/content/Context;Ljava/io/File;I)V
    .registers 7

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unzipTbsCoreToThirdAppTmp,ctx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "File="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "coreVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    if-nez p1, :cond_2d

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    const/4 v3, 0x1

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-installTbsCore tbsApkPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-installTbsCore tbsCoreTargetVer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-installTbsCore currentProcessId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TbsInstaller-installTbsCore currentThreadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Landroid/content/Context;Z)V
    .registers 14

    const/4 v10, 0x2

    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    iput-boolean v6, p0, Lcom/tencent/smtt/sdk/am;->k:Z

    :cond_8
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-continueInstallTbsCore currentThreadName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_14b

    :try_start_66
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v5

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ai;->b()I

    move-result v4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v2, "install_apk_path"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v2, "copy_core_ver"

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    const-string v7, "copy_status"

    invoke-virtual {v2, v7}, Lcom/tencent/smtt/sdk/ai;->b(Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_66 .. :try_end_93} :catchall_10f

    move-result v2

    sget-object v7, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_99
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-continueInstallTbsCore installStatus="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsCoreInstallVer="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsApkPath="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsCoreCopyVer="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "TbsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TbsInstaller-continueInstallTbsCore copyStatus="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_116

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;I)V

    goto/16 :goto_5c

    :catchall_10f
    move-exception v0

    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_116
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "tbs_responsecode"

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_129

    if-eq v7, v10, :cond_129

    const/4 v8, 0x4

    if-ne v7, v8, :cond_12a

    :cond_129
    move v1, v6

    :cond_12a
    if-nez v1, :cond_13d

    if-eqz v7, :cond_13d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "operation"

    const/16 v7, 0x2711

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_13d
    if-ltz v5, :cond_144

    if-ge v5, v10, :cond_144

    invoke-virtual {p0, p1, v3, v4}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_144
    if-nez v2, :cond_5c

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;I)Z

    goto/16 :goto_5c

    :cond_14b
    move-object v3, v2

    move v4, v1

    move v5, v0

    move v2, v0

    move v0, v1

    goto/16 :goto_99
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/am;->p:Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    if-ne v0, v2, :cond_f

    :goto_d
    monitor-exit p0

    return v2

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    sput-boolean v0, Lcom/tencent/smtt/sdk/am;->p:Z

    new-instance v0, Lcom/tencent/smtt/sdk/aq;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/smtt/sdk/aq;-><init>(Lcom/tencent/smtt/sdk/am;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/aq;->start()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_d

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;[Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_12

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isEnableNoCoreGray()Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_11

    :catch_18
    move-exception v1

    goto :goto_11
.end method

.method b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;
    .registers 6

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_share"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p1, :cond_1c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x0

    :cond_23
    return-object v0
.end method

.method declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/am;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/smtt/sdk/am;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/am;->h:Z

    if-nez v0, :cond_17

    :cond_e
    const-string v0, "TbsInstaller"

    const-string v1, "releaseTbsInstallingFileLock with skip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    const-string v0, "TbsInstaller"

    const-string v1, "releaseTbsInstallingFileLock without skip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/am;->f:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/am;->g:Ljava/io/FileOutputStream;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/am;->h:Z
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_29

    goto :goto_15

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    return-void
.end method

.method b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 14

    const/16 v10, 0xd9

    const/16 v9, -0x222

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21b

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_16

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {}, Lcom/tencent/smtt/utils/y;->a()J

    move-result-wide v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xd2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rom is not enough when patching tbs core! curAvailROM="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",minReqRom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21c

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_16

    :cond_60
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x21d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_16

    :cond_70
    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    const-string v1, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "TbsInstaller-installLocalTesCoreExInThread locked="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2df

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_8e
    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_a1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ai;->d()I

    move-result v0

    if-ne v0, v3, :cond_b9

    :cond_a1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a5} :catch_380
    .catchall {:try_start_8e .. :try_end_a5} :catchall_28f

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b4
    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    goto/16 :goto_16

    :cond_b9
    :try_start_b9
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_responsecode"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_cd

    if-eq v4, v2, :cond_cd

    const/4 v0, 0x4

    if-ne v4, v0, :cond_152

    :cond_cd
    move v0, v3

    :goto_ce
    if-nez v0, :cond_38d

    if-eqz v4, :cond_38d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v4, "incrupdate_retry_num"

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/ai;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_155

    const-string v0, "TbsInstaller"

    const-string v4, "TbsInstaller-installLocalTesCoreExInThread exceed incrupdate num"

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "old_apk_location"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "new_apk_location"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "diff_file_location"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_106

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_114

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_114
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_122

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_122
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v4, 0xe0

    const-string v6, "incrUpdate exceed retry max num"

    invoke-virtual {v0, v4, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_141} :catch_380
    .catchall {:try_start_b9 .. :try_end_141} :catchall_28f

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    :cond_152
    move v0, v5

    goto/16 :goto_ce

    :cond_155
    :try_start_155
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v4

    const-string v6, "incrupdate_retry_num"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v6, v0}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_38d

    new-instance v4, Ljava/io/File;

    const-string v6, "x5.tbs"

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x226

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_17f} :catch_380
    .catchall {:try_start_155 .. :try_end_17f} :catchall_28f

    move-result-object v4

    if-nez v4, :cond_1ec

    :try_start_182
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result null : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "new_core_ver"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1a0} :catch_385
    .catchall {:try_start_182 .. :try_end_1a0} :catchall_375

    move v1, v3

    :goto_1a1
    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    if-nez v1, :cond_330

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_SUCCESS"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, "incrupdate_retry_num"

    invoke-virtual {v0, v1, v5}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x220

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/ai;->c(I)V

    const-string v0, "apk_path"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/File;Landroid/content/Context;)V

    const-string v1, "tbs_core_ver"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_b4

    :cond_1ec
    :try_start_1ec
    const-string v0, "patch_result"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1f1} :catch_389
    .catchall {:try_start_1ec .. :try_end_1f1} :catchall_379

    move-result v1

    :try_start_1f2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v6, 0xe4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "result "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "new_core_ver"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_21a} :catch_21b
    .catchall {:try_start_1f2 .. :try_end_21a} :catchall_37d

    goto :goto_1a1

    :catch_21b
    move-exception v0

    :goto_21c
    :try_start_21c
    const-string v6, "TbsInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "installLocalTbsCoreExInThread exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_237
    .catchall {:try_start_21c .. :try_end_237} :catchall_37d

    :try_start_237
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v6, -0x21f

    invoke-virtual {v1, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v6, 0xda

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_24d
    .catchall {:try_start_237 .. :try_end_24d} :catchall_375

    sget-object v0, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v1, "tbs_needdownload"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incrUpdate fail! patch ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto/16 :goto_b4

    :catchall_28f
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_292
    sget-object v6, Lcom/tencent/smtt/sdk/am;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    if-nez v1, :cond_2ed

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_SUCCESS"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    const-string v2, "incrupdate_retry_num"

    invoke-virtual {v1, v2, v5}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x220

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/ai;->c(I)V

    const-string v1, "apk_path"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/File;Landroid/content/Context;)V

    const-string v2, "tbs_core_ver"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2db
    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    throw v0

    :cond_2df
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x223

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_16

    :cond_2ed
    if-ne v1, v2, :cond_2f7

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2db

    :cond_2f7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v2, "TbsInstaller"

    const-string v3, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "incrUpdate fail! patch ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_2db

    :cond_330
    if-ne v1, v2, :cond_33b

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    :cond_33b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incrUpdate fail! patch ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto/16 :goto_b4

    :catchall_375
    move-exception v0

    move v1, v3

    goto/16 :goto_292

    :catchall_379
    move-exception v0

    move v1, v2

    goto/16 :goto_292

    :catchall_37d
    move-exception v0

    goto/16 :goto_292

    :catch_380
    move-exception v0

    move-object v4, v1

    move v1, v2

    goto/16 :goto_21c

    :catch_385
    move-exception v0

    move v1, v3

    goto/16 :goto_21c

    :catch_389
    move-exception v0

    move v1, v2

    goto/16 :goto_21c

    :cond_38d
    move-object v4, v1

    move v1, v2

    goto/16 :goto_1a1
.end method

.method b(Landroid/content/Context;Z)V
    .registers 6

    const/4 v2, 0x1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    const-string v0, "TbsInstaller"

    const-string v1, "android version < 2.1 no need install X5 core"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->v(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2a} :catch_89

    :cond_2a
    :goto_2a
    const-string v0, "TbsInstaller"

    const-string v1, "Tbsinstaller installTbsCoreIfNeeded #1 "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/am;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TbsInstaller"

    const-string v1, "Tbsinstaller installTbsCoreIfNeeded #2 "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "core_unzip_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/am;->d(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromUnzip!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_54
    const-string v0, "core_share_backup_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/am;->e(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromBackup!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_6a
    const-string v0, "core_copy_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromCopy!!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_80
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreIfNeeded, error !!"

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :catch_89
    move-exception v0

    goto :goto_2a
.end method

.method b(Landroid/content/Context;I)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_9
    return v0

    :cond_a
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-installLocalTbsCore targetTbsCoreVer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-installLocalTbsCore currentProcessId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller-installLocalTbsCore currentThreadName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/am;->d(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_90

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/tencent/smtt/sdk/am;->m:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_9

    :cond_90
    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller--installLocalTbsCore copy from null"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public b(Landroid/content/Context;Ljava/io/File;I)Z
    .registers 8

    const-string v0, "TbsInstaller"

    const-string v1, "unzipTbsCoreToThirdAppTmpInThread #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result v0

    const-string v1, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unzipTbsCoreToThirdAppTmpInThread result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;I)V

    :cond_29
    return v0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_d
    return v0
.end method

.method c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;
    .registers 6

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_share_decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p1, :cond_1c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x0

    :cond_23
    return-object v0
.end method

.method c(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    if-eq v0, p2, :cond_9

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    :cond_1c
    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller--quickDexOptForThirdPartyApp hostContext != null"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Landroid/content/Context;)Z

    goto :goto_9

    :cond_27
    if-gtz v0, :cond_9

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--installTbsCoreForThirdPartyApp hostContext == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller::installTbsCoreForThirdPartyApp forceSysWebViewInner #2"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9
.end method

.method c(Landroid/content/Context;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return v2

    :cond_14
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v4, 0x0

    :try_start_1a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_7a
    .catchall {:try_start_1a .. :try_end_24} :catchall_8c

    :try_start_24
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "tbs_local_installation"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_36} :catch_9e
    .catchall {:try_start_24 .. :try_end_36} :catchall_99

    move-result v4

    if-eqz v4, :cond_a8

    :try_start_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf731400

    cmp-long v0, v6, v8

    if-lez v0, :cond_71

    move v0, v1

    :goto_4a
    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TBS_LOCAL_INSTALLATION is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expired="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_68} :catch_a3
    .catchall {:try_start_39 .. :try_end_68} :catchall_99

    if-nez v0, :cond_73

    :goto_6a
    and-int v0, v4, v1

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_75

    :cond_6f
    :goto_6f
    move v2, v0

    goto :goto_13

    :cond_71
    move v0, v2

    goto :goto_4a

    :cond_73
    move v1, v2

    goto :goto_6a

    :catch_75
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catch_7a
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v4

    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_9b

    if-eqz v2, :cond_6f

    :try_start_83
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_6f

    :catch_87
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catchall_8c
    move-exception v0

    move-object v3, v4

    :goto_8e
    if-eqz v3, :cond_93

    :try_start_90
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    :cond_93
    :goto_93
    throw v0

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    :catchall_99
    move-exception v0

    goto :goto_8e

    :catchall_9b
    move-exception v0

    move-object v3, v2

    goto :goto_8e

    :catch_9e
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto :goto_7e

    :catch_a3
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move v0, v4

    goto :goto_7e

    :cond_a8
    move v0, v2

    goto :goto_4a
.end method

.method public d(Landroid/content/Context;I)Landroid/content/Context;
    .registers 11

    const/4 v1, 0x0

    const-string v0, "TbsInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TbsInstaller--getTbsCoreHostContext tbsCoreTargetVer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_19

    move-object v0, v1

    :goto_18
    return-object v0

    :cond_19
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_1e
    array-length v2, v3

    if-ge v0, v2, :cond_96

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    aget-object v2, v3, v0

    invoke-direct {p0, p1, v2}, Lcom/tencent/smtt/sdk/am;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    aget-object v2, v3, v0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v2, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller--getTbsCoreHostContext "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " illegal signature go on next"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_62
    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v4

    const-string v5, "TbsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TbsInstaller-getTbsCoreHostContext hostTbsCoreVer="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5f

    if-ne v4, p2, :cond_5f

    const-string v1, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller-getTbsCoreHostContext targetApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_18

    :cond_96
    move-object v0, v1

    goto :goto_18
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_4b
    .catchall {:try_start_9 .. :try_end_17} :catchall_41

    move-result v2

    if-nez v2, :cond_22

    if-eqz v0, :cond_7

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_7

    :catch_20
    move-exception v1

    goto :goto_7

    :cond_22
    :try_start_22
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_4b
    .catchall {:try_start_22 .. :try_end_31} :catchall_41

    :try_start_31
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_57
    .catchall {:try_start_31 .. :try_end_3a} :catchall_55

    move-result-object v0

    if-eqz v1, :cond_7

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_20

    goto :goto_7

    :catchall_41
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_53

    :cond_4a
    :goto_4a
    throw v0

    :catch_4b
    move-exception v1

    move-object v1, v0

    :goto_4d
    if-eqz v1, :cond_7

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_20

    goto :goto_7

    :catch_53
    move-exception v1

    goto :goto_4a

    :catchall_55
    move-exception v0

    goto :goto_45

    :catch_57
    move-exception v2

    goto :goto_4d
.end method

.method public d(Landroid/content/Context;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v2, "tbs.conf"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_56

    :try_start_11
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_3a
    .catchall {:try_start_11 .. :try_end_1b} :catchall_49

    :try_start_1b
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_28} :catch_69
    .catchall {:try_start_1b .. :try_end_28} :catchall_62

    :try_start_28
    const-string v1, "tbs_local_installation"

    const-string v3, "false"

    invoke-virtual {v4, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_6d
    .catchall {:try_start_28 .. :try_end_33} :catchall_64

    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_56

    :goto_36
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_5a
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_56

    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception v0

    move-object v0, v1

    :goto_3c
    if-eqz v0, :cond_41

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_5c
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_56

    :cond_41
    :goto_41
    if-eqz v1, :cond_39

    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_56

    goto :goto_39

    :catch_47
    move-exception v0

    goto :goto_39

    :catchall_49
    move-exception v0

    move-object v2, v1

    :goto_4b
    if-eqz v1, :cond_50

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_56

    :cond_50
    :goto_50
    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_60
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    goto :goto_39

    :catch_58
    move-exception v0

    goto :goto_36

    :catch_5a
    move-exception v0

    goto :goto_39

    :catch_5c
    move-exception v0

    goto :goto_41

    :catch_5e
    move-exception v1

    goto :goto_50

    :catch_60
    move-exception v1

    goto :goto_55

    :catchall_62
    move-exception v0

    goto :goto_4b

    :catchall_64
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4b

    :catch_69
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3c

    :catch_6d
    move-exception v1

    move-object v1, v2

    goto :goto_3c
.end method

.method public e(Landroid/content/Context;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x5.tbs.decouple"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/smtt/sdk/am;->v(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;)Z

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_25
    array-length v5, v4

    if-ge v2, v5, :cond_41

    new-instance v5, Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_41
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_57} :catch_58

    :goto_57
    return v0

    :catch_58
    move-exception v0

    move v0, v1

    goto :goto_57
.end method

.method e(Landroid/content/Context;I)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.tencent.tbs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    :cond_23
    :goto_23
    return v0

    :cond_24
    const-string v0, "TbsInstaller"

    const-string v2, "321"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_23

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    :goto_32
    if-eqz v3, :cond_d8

    sget-object v5, Lcom/tencent/smtt/sdk/am;->n:[[Ljava/lang/Long;

    array-length v6, v5

    move v2, v1

    :goto_38
    if-ge v2, v6, :cond_23

    aget-object v7, v5, v2

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    if-ne p2, v8, :cond_d4

    new-instance v2, Ljava/io/File;

    const-string v5, "libmttwebview.so"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_b4

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check so success: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7f} :catch_80

    goto :goto_23

    :catch_80
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ISTBSCORELEGAL exception getMessage is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ISTBSCORELEGAL exception getCause is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_23

    :cond_b4
    if-nez v4, :cond_c0

    :try_start_b6
    const-string v0, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_c0
    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string v0, "TbsInstaller"

    const-string v2, "322"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_23

    :cond_d4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    :cond_d8
    const-string v0, "TbsInstaller"

    const-string v2, "323"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_df} :catch_80

    move v0, v1

    goto/16 :goto_23

    :cond_e2
    move-object v3, v2

    goto/16 :goto_32
.end method

.method f(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "30820253308201bca00302010202044bbb0361300d06092a864886f70d0101050500306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b30090603550403130251513020170d3130303430363039343831375a180f32323834303132303039343831375a306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b300906035504031302515130819f300d06092a864886f70d010101050003818d0030818902818100a15e9756216f694c5915e0b529095254367c4e64faeff07ae13488d946615a58ddc31a415f717d019edc6d30b9603d3e2a7b3de0ab7e0cf52dfee39373bc472fa997027d798d59f81d525a69ecf156e885fd1e2790924386b2230cc90e3b7adc95603ddcf4c40bdc72f22db0f216a99c371d3bf89cba6578c60699e8a0d536950203010001300d06092a864886f70d01010505000381810094a9b80e80691645dd42d6611775a855f71bcd4d77cb60a8e29404035a5e00b21bcc5d4a562482126bd91b6b0e50709377ceb9ef8c2efd12cc8b16afd9a159f350bb270b14204ff065d843832720702e28b41491fbc3a205f5f2f42526d67f17614d8a974de6487b2c866efede3b4e49a0f916baa3c1336fd2ee1b1629652049"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_6a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.tbs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8

    :cond_84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.qzone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "308202ad30820216a00302010202044c26cea2300d06092a864886f70d010105050030819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d301e170d3130303632373034303830325a170d3335303632313034303830325a30819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d30819f300d06092a864886f70d010101050003818d003081890281810082d6aca037a9843fbbe88b6dd19f36e9c24ce174c1b398f3a529e2a7fe02de99c27539602c026edf96ad8d43df32a85458bca1e6fbf11958658a7d6751a1d9b782bf43a8c19bd1c06bdbfd94c0516326ae3cf638ac42bb470580e340c46e6f306a772c1ef98f10a559edf867f3f31fe492808776b7bd953b2cba2d2b2d66a44f0203010001300d06092a864886f70d0101050500038181006003b04a8a8c5be9650f350cda6896e57dd13e6e83e7f891fc70f6a3c2eaf75cfa4fc998365deabbd1b9092159edf4b90df5702a0d101f8840b5d4586eb92a1c3cd19d95fbc1c2ac956309eda8eef3944baf08c4a49d3b9b3ffb06bc13dab94ecb5b8eb74e8789aa0ba21cb567f538bbc59c2a11e6919924a24272eb79251677"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto/16 :goto_8

    :cond_9f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.qqpimsecure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b4} :catch_ba

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto/16 :goto_8

    :catch_ba
    move-exception v0

    const-string v0, "TbsInstaller"

    const-string v2, "TbsInstaller-installLocalTbsCore getPackageInfo fail"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_8
.end method

.method public g(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockEnable()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_15

    move-result v0

    :goto_9
    if-eqz v0, :cond_14

    sget-object v0, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tencent/smtt/sdk/am;->l:Ljava/nio/channels/FileLock;

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/nio/channels/FileLock;)V

    :cond_14
    return-void

    :catch_15
    move-exception v1

    goto :goto_9
.end method

.method h(Landroid/content/Context;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller--getTmpTbsCoreVersionUnzipDir  tbsShareDir is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_63
    .catchall {:try_start_2 .. :try_end_24} :catchall_5c

    move-result v1

    if-nez v1, :cond_2d

    if-eqz v2, :cond_2c

    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_50

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    :try_start_2d
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_63
    .catchall {:try_start_2d .. :try_end_3c} :catchall_5c

    :try_start_3c
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const-string v2, "tbs_core_version"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_70
    .catchall {:try_start_3c .. :try_end_47} :catchall_6d

    move-result-object v2

    if-nez v2, :cond_52

    if-eqz v1, :cond_2c

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2c

    :catch_50
    move-exception v1

    goto :goto_2c

    :cond_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_70
    .catchall {:try_start_52 .. :try_end_55} :catchall_6d

    move-result v0

    if-eqz v1, :cond_2c

    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_50

    goto :goto_2c

    :catchall_5c
    move-exception v0

    :goto_5d
    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6b

    :cond_62
    :goto_62
    throw v0

    :catch_63
    move-exception v1

    move-object v1, v2

    :goto_65
    if-eqz v1, :cond_2c

    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_50

    goto :goto_2c

    :catch_6b
    move-exception v1

    goto :goto_62

    :catchall_6d
    move-exception v0

    move-object v2, v1

    goto :goto_5d

    :catch_70
    move-exception v2

    goto :goto_65
.end method

.method i(Landroid/content/Context;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_4f
    .catchall {:try_start_2 .. :try_end_10} :catchall_48

    move-result v1

    if-nez v1, :cond_19

    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3c

    :cond_18
    :goto_18
    return v0

    :cond_19
    :try_start_19
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_4f
    .catchall {:try_start_19 .. :try_end_28} :catchall_48

    :try_start_28
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    const-string v2, "tbs_core_version"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_5c
    .catchall {:try_start_28 .. :try_end_33} :catchall_59

    move-result-object v2

    if-nez v2, :cond_3e

    if-eqz v1, :cond_18

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_18

    :catch_3c
    move-exception v1

    goto :goto_18

    :cond_3e
    :try_start_3e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_5c
    .catchall {:try_start_3e .. :try_end_41} :catchall_59

    move-result v0

    if-eqz v1, :cond_18

    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_3c

    goto :goto_18

    :catchall_48
    move-exception v0

    :goto_49
    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_57

    :cond_4e
    :goto_4e
    throw v0

    :catch_4f
    move-exception v1

    move-object v1, v2

    :goto_51
    if-eqz v1, :cond_18

    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_3c

    goto :goto_18

    :catch_57
    move-exception v1

    goto :goto_4e

    :catchall_59
    move-exception v0

    move-object v2, v1

    goto :goto_49

    :catch_5c
    move-exception v2

    goto :goto_51
.end method

.method j(Landroid/content/Context;)I
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_68
    .catchall {:try_start_2 .. :try_end_10} :catchall_89

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v3, :cond_18

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_c5

    :cond_18
    :goto_18
    move v0, v1

    :cond_19
    :goto_19
    return v0

    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_68
    .catchall {:try_start_1a .. :try_end_29} :catchall_89

    :try_start_29
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v3, "tbs_core_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_fd
    .catchall {:try_start_29 .. :try_end_34} :catchall_fb

    move-result-object v0

    if-nez v0, :cond_3e

    if-eqz v2, :cond_3c

    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_e0

    :cond_3c
    :goto_3c
    move v0, v1

    goto :goto_19

    :cond_3e
    :try_start_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/tencent/smtt/sdk/am;->o:I

    if-nez v3, :cond_48

    sput v0, Lcom/tencent/smtt/sdk/am;->o:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_48} :catch_fd
    .catchall {:try_start_3e .. :try_end_48} :catchall_fb

    :cond_48
    if-eqz v2, :cond_19

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_19

    :catch_4e
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_68
    move-exception v0

    move-object v2, v3

    :goto_6a
    :try_start_6a
    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller--getTbsCoreInstalledVerInNolock Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_fb

    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_ab

    :cond_87
    :goto_87
    move v0, v1

    goto :goto_19

    :catchall_89
    move-exception v0

    move-object v2, v3

    :goto_8b
    if-eqz v2, :cond_90

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    throw v0

    :catch_91
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :catch_ab
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :catch_c5
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :catch_e0
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    :catchall_fb
    move-exception v0

    goto :goto_8b

    :catch_fd
    move-exception v0

    goto/16 :goto_6a
.end method

.method k(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/tencent/smtt/sdk/am;->o:I

    if-eqz v0, :cond_7

    sget v0, Lcom/tencent/smtt/sdk/am;->o:I

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    goto :goto_6
.end method

.method l(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/tencent/smtt/sdk/am;->o:I

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/am;->o:I

    goto :goto_4
.end method

.method m(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tbs.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method n(Landroid/content/Context;)I
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer locked="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_fc

    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v4, "tbs.conf"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_b2
    .catchall {:try_start_26 .. :try_end_34} :catchall_e4

    move-result v0

    if-nez v0, :cond_4e

    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_163

    :cond_3c
    :goto_3c
    :try_start_3c
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_49} :catch_17e

    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    move v0, v1

    goto :goto_8

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_b2
    .catchall {:try_start_4e .. :try_end_5d} :catchall_e4

    :try_start_5d
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v3, "tbs_core_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_1fc
    .catchall {:try_start_5d .. :try_end_68} :catchall_1f9

    move-result-object v0

    if-nez v0, :cond_82

    if-eqz v2, :cond_70

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_195

    :cond_70
    :goto_70
    :try_start_70
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_7d} :catch_1b0

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    move v0, v1

    goto :goto_8

    :cond_82
    :try_start_82
    sget-object v3, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9a} :catch_1fc
    .catchall {:try_start_82 .. :try_end_9a} :catchall_1f9

    move-result v0

    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_1c7

    :cond_a0
    :goto_a0
    :try_start_a0
    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_ad} :catch_1e2

    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    goto/16 :goto_8

    :catch_b2
    move-exception v0

    move-object v2, v3

    :goto_b4
    :try_start_b4
    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TbsInstaller--getTbsCoreInstalledVer Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b4 .. :try_end_cc} :catchall_1f9

    if-eqz v2, :cond_d1

    :try_start_ce
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_132

    :cond_d1
    :goto_d1
    :try_start_d1
    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_de

    sget-object v0, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_de} :catch_14c

    :cond_de
    :goto_de
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    move v0, v1

    goto/16 :goto_8

    :catchall_e4
    move-exception v0

    move-object v2, v3

    :goto_e6
    if-eqz v2, :cond_eb

    :try_start_e8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_102

    :cond_eb
    :goto_eb
    :try_start_eb
    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_f8

    sget-object v1, Lcom/tencent/smtt/sdk/am;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f8} :catch_11c

    :cond_f8
    :goto_f8
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    throw v0

    :cond_fc
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/am;->b()V

    move v0, v1

    goto/16 :goto_8

    :catch_102
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :catch_11c
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsRenameLock.unlock exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :catch_132
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    :catch_14c
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsRenameLock.unlock exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_de

    :catch_163
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    :catch_17e
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsRenameLock.unlock exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :catch_195
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    :catch_1b0
    move-exception v0

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsRenameLock.unlock exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    :catch_1c7
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsInstaller--getTbsCoreInstalledVer IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a0

    :catch_1e2
    move-exception v1

    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsRenameLock.unlock exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ad

    :catchall_1f9
    move-exception v0

    goto/16 :goto_e6

    :catch_1fc
    move-exception v0

    goto/16 :goto_b4
.end method

.method public o(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller--coreShareCopyToDecouple #0"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_11
    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    new-instance v3, Lcom/tencent/smtt/sdk/at;

    invoke-direct {v3, p0}, Lcom/tencent/smtt/sdk/at;-><init>(Lcom/tencent/smtt/sdk/am;)V

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_27

    const-string v1, "TbsInstaller"

    const-string v2, "TbsInstaller--coreShareCopyToDecouple success!!!"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return v0

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    goto :goto_26
.end method

.method p(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--cleanStatusAndTmpDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ai;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, "incrupdate_retry_num"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_downloaddecouplecore"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_6b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/ai;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    const-string v1, "copy_retry_num"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ai;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/ai;->c(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/ai;->a(II)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/am;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    :cond_6b
    return-void
.end method

.method q(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_share_decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method r(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method s(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "share"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method u(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_unzip_tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method v(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_unzip_tmp_decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method w(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    const-string v0, "tbs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "core_copy_tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method declared-synchronized x(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget v2, p0, Lcom/tencent/smtt/sdk/am;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/am;->e:I

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/am;->h:Z

    if-eqz v2, :cond_16

    const-string v1, "TbsInstaller"

    const-string v2, "getTbsInstallingFileLock success,is cached= true"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3e

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    const/4 v2, 0x1

    :try_start_17
    const-string v3, "tbslock.txt"

    invoke-static {p1, v2, v3}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/am;->g:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/am;->g:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/tencent/smtt/sdk/am;->g:Ljava/io/FileOutputStream;

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/smtt/sdk/am;->f:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/am;->f:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_33

    move v0, v1

    goto :goto_14

    :cond_31
    move v0, v1

    goto :goto_14

    :cond_33
    const-string v1, "TbsInstaller"

    const-string v2, "getTbsInstallingFileLock success,is cached= false"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/am;->h:Z
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_3e

    goto :goto_14

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
