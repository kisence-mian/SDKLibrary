.class public Lcom/tencent/smtt/utils/TbsLogClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/TbsLogClient$a;
    }
.end annotation


# static fields
.field static a:Lcom/tencent/smtt/utils/TbsLogClient;

.field static c:Ljava/io/File;

.field static d:Ljava/lang/String;

.field static e:[B

.field private static i:Z


# instance fields
.field b:Landroid/widget/TextView;

.field private f:Ljava/text/SimpleDateFormat;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->a:Lcom/tencent/smtt/utils/TbsLogClient;

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->d:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->e:[B

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/utils/TbsLogClient;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->f:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->g:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->g:Landroid/content/Context;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->f:Ljava/text/SimpleDateFormat;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->f:Ljava/text/SimpleDateFormat;

    goto :goto_20
.end method

.method private a()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->g:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    new-instance v1, Ljava/io/File;

    const-string v2, "tbslog.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    invoke-static {}, Lcom/tencent/smtt/utils/LogFileUtils;->createKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->d:Ljava/lang/String;

    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/utils/TbsLogClient;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/LogFileUtils;->createHeaderText(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->e:[B
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3a} :catch_44

    goto :goto_1c

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1c

    :cond_40
    const/4 v0, 0x0

    :try_start_41
    sput-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_43} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_43} :catch_44

    goto :goto_1c

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1c
.end method

.method public static setWriteLogJIT(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/utils/TbsLogClient;->i:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setLogView(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/utils/TbsLogClient;->b:Landroid/widget/TextView;

    return-void
.end method

.method public showLog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/smtt/utils/TbsLogClient$a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/utils/TbsLogClient$a;-><init>(Lcom/tencent/smtt/utils/TbsLogClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public writeLog(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->f:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4b

    sget-boolean v0, Lcom/tencent/smtt/utils/TbsLogClient;->i:Z

    if-eqz v0, :cond_4e

    :cond_4b
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/TbsLogClient;->writeLogToDisk()V

    :cond_4e
    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_64

    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64
.end method

.method public writeLogToDisk()V
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/utils/TbsLogClient;->a()V

    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tencent/smtt/utils/TbsLogClient;->c:Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/utils/TbsLogClient;->d:Ljava/lang/String;

    sget-object v2, Lcom/tencent/smtt/utils/TbsLogClient;->e:[B

    iget-object v3, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/utils/LogFileUtils;->writeDataToStorage(Ljava/io/File;Ljava/lang/String;[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/smtt/utils/TbsLogClient;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method
