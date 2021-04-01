.class public Lcom/tencent/smtt/utils/TbsLog;
.super Ljava/lang/Object;


# static fields
.field public static final TBSLOG_CODE_SDK_BASE:I = 0x3e8

.field public static final TBSLOG_CODE_SDK_CONFLICT_X5CORE:I = 0x3e1

.field public static final TBSLOG_CODE_SDK_INIT:I = 0x3e7

.field public static final TBSLOG_CODE_SDK_INVOKE_ERROR:I = 0x3e5

.field public static final TBSLOG_CODE_SDK_LOAD_ERROR:I = 0x3e6

.field public static final TBSLOG_CODE_SDK_NO_SHARE_X5CORE:I = 0x3e2

.field public static final TBSLOG_CODE_SDK_SELF_MODE:I = 0x3e4

.field public static final TBSLOG_CODE_SDK_THIRD_MODE:I = 0x3e3

.field public static final TBSLOG_CODE_SDK_UNAVAIL_X5CORE:I = 0x3e0

.field public static final X5LOGTAG:Ljava/lang/String; = "x5logtag"

.field private static a:Z

.field private static b:Z

.field private static c:Lcom/tencent/smtt/utils/TbsLogClient;

.field public static sLogMaxCount:I

.field public static sTbsLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    const/16 v0, 0xa

    sput v0, Lcom/tencent/smtt/utils/TbsLog;->sLogMaxCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addLog(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    sget-object v2, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/tencent/smtt/utils/TbsLog;->sLogMaxCount:I

    if-le v0, v1, :cond_2a

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/tencent/smtt/utils/TbsLog;->sLogMaxCount:I

    sub-int/2addr v0, v1

    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2a

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_6b
    .catchall {:try_start_3 .. :try_end_28} :catchall_70

    move v0, v1

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    :try_start_2d
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_73
    .catchall {:try_start_2d .. :try_end_30} :catchall_70

    move-result-object v0

    :cond_31
    :goto_31
    if-nez v0, :cond_35

    :try_start_33
    const-string v0, ""

    :cond_35
    const-string v1, "[%d][%d][%c][%d]%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/utils/TbsLog;->sTbsLogList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_69} :catch_6b
    .catchall {:try_start_33 .. :try_end_69} :catchall_70

    :goto_69
    :try_start_69
    monitor-exit v2

    return-void

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    :catchall_70
    move-exception v0

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v0

    :catch_73
    move-exception v1

    goto :goto_31
.end method

.method public static app_extra(Ljava/lang/String;Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v6, 0x6

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.tencent.tbs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.tencent.mtt"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.tencent.mm"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.tencent.mobileqq"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.tencent.mtt.sdk.test"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "com.qzone"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "DEMO"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "QB"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "WX"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "QQ"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "TEST"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "QZ"

    aput-object v5, v3, v4

    :goto_48
    if-ge v0, v6, :cond_7e

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_extra pid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; APP_TAG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    if-ne v0, v6, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_extra pid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; APP_TAG:OTHER!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9c} :catch_a0

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :catch_a0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_extra exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_29

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->showLog(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(E)-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-TBS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLog(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_29

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->showLog(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static getTbsLogFilePath()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(I)-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-TBS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLog(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_29

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->showLog(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static declared-synchronized initIfNeed(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/tencent/smtt/utils/TbsLog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_f

    new-instance v0, Lcom/tencent/smtt/utils/TbsLogClient;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/TbsLogClient;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/TbsLog;->setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setLogView(Landroid/widget/TextView;)V
    .registers 2

    if-eqz p0, :cond_6

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/utils/TbsLogClient;->setLogView(Landroid/widget/TextView;)V

    goto :goto_6
.end method

.method public static setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    sput-object p0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->b:Z

    invoke-static {v0}, Lcom/tencent/smtt/utils/TbsLogClient;->setWriteLogJIT(Z)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setWriteLogJIT(Z)V
    .registers 2

    sput-boolean p0, Lcom/tencent/smtt/utils/TbsLog;->b:Z

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLogClient;->setWriteLogJIT(Z)V

    goto :goto_6
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_29

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->showLog(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(W)-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-TBS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLog(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLog;->a:Z

    if-eqz v0, :cond_29

    if-eqz p2, :cond_29

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/TbsLogClient;->showLog(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static declared-synchronized writeLogToDisk()V
    .registers 2

    const-class v1, Lcom/tencent/smtt/utils/TbsLog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/smtt/utils/TbsLog;->c:Lcom/tencent/smtt/utils/TbsLogClient;

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLogToDisk()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
