.class public Lcom/tencent/smtt/sdk/TbsCoreLoadStat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;
    }
.end annotation


# static fields
.field private static d:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

.field public static volatile mLoadErrorCode:I


# instance fields
.field private a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;

.field private b:Z

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->mLoadErrorCode:I

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->d:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->b:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->c:I

    return-void
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->d:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->d:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    :cond_b
    sget-object v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->d:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->clear()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->b:Z

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "loaderror"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized a(Landroid/content/Context;ILjava/lang/Throwable;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->mLoadErrorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    sput p2, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->mLoadErrorCode:I

    const/16 v0, 0x3e6

    const-string v1, "code=%d,desc=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_51

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_4e

    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLoadErrorCode :: error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->mLoadErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") was already reported; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is duplicated. Try to remove it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TbsCoreLoadStat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_4e

    goto :goto_29

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    :try_start_51
    const-string v0, "TbsCoreLoadStat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLoadErrorCode :: error is null with errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Check & correct it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_4e

    goto :goto_29
.end method
