.class public Lcom/umeng/analytics/process/DBFileTraversalUtil;
.super Ljava/lang/Object;
.source "DBFileTraversalUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/DBFileTraversalUtil$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/process/DBFileTraversalUtil;->a:Ljava/util/concurrent/ExecutorService;

    .line 18
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    sput-object v0, Lcom/umeng/analytics/process/DBFileTraversalUtil;->b:Lcom/umeng/commonsdk/utils/FileLockUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/utils/FileLockUtil;
    .registers 1

    .line 15
    sget-object v0, Lcom/umeng/analytics/process/DBFileTraversalUtil;->b:Lcom/umeng/commonsdk/utils/FileLockUtil;

    return-object v0
.end method

.method public static traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    .registers 5

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 32
    sget-object p0, Lcom/umeng/analytics/process/DBFileTraversalUtil;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;-><init>(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    :cond_1b
    return-void
.end method
