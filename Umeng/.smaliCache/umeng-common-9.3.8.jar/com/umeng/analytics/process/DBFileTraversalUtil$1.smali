.class final Lcom/umeng/analytics/process/DBFileTraversalUtil$1;
.super Ljava/lang/Object;
.source "DBFileTraversalUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/umeng/commonsdk/utils/FileLockCallback;

.field final synthetic c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    .registers 4

    .line 32
    iput-object p1, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->b:Lcom/umeng/commonsdk/utils/FileLockCallback;

    iput-object p3, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 36
    const-string v0, "MobclickRT"

    :try_start_2
    iget-object v1, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 37
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 39
    invoke-static {}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->a()Lcom/umeng/commonsdk/utils/FileLockUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->b:Lcom/umeng/commonsdk/utils/FileLockCallback;

    invoke-virtual {v5, v4, v6}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;)V

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 44
    :cond_40
    iget-object v1, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;

    if-eqz v1, :cond_47

    .line 45
    invoke-interface {v1}, Lcom/umeng/analytics/process/DBFileTraversalUtil$a;->a()V
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_48

    .line 49
    :cond_47
    goto :goto_49

    .line 47
    :catchall_48
    move-exception v1

    .line 50
    :goto_49
    const-string v1, "--->>> end *** "

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
