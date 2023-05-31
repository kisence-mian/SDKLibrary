.class public Lcom/kwad/sdk/c/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/c/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Lcom/kwad/sdk/c/c/a$b;

.field private static d:Ljava/io/File;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwad/sdk/c/c/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/kwad/sdk/c/c/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/c/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "MM-dd kk:mm:ss"

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_3a

    move-result-object v0

    const-string v2, "%s %s D/%s:"

    const/4 v3, 0x3

    :try_start_16
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget-object v4, Lcom/kwad/sdk/c/c/a;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_3a

    move-result-object v0

    const-string v2, "%s %s\n"

    const/4 v3, 0x2

    :try_start_2a
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_3a

    :goto_39
    return-object v1

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "MM-dd kk:mm:ss"

    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_89

    move-result-object v2

    const-string v3, "%s %s D/%s:"

    const/4 v4, 0x3

    :try_start_17
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Lcom/kwad/sdk/c/c/a;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_89

    move-result-object v2

    const-string v3, "%s in thread:%s"

    const/4 v4, 0x2

    :try_start_2b
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_89

    move-result-object v3

    const-string v4, "%s %s\n"

    const/4 v5, 0x2

    :try_start_42
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_89

    const-string v3, "%s \t %s\n"

    const/4 v4, 0x2

    :try_start_54
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    :goto_6c
    if-ge v0, v4, :cond_8d

    aget-object v5, v3, v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_70} :catch_89

    const-string v6, "%s \t\t %s\n"

    const/4 v7, 0x2

    :try_start_73
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_86} :catch_89

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8d
    return-object v1
.end method

.method public static a(Landroid/content/Context;ZLjava/io/File;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p2, :cond_d

    const-string v0, "KSAdSDK_2.6.4.1"

    const-string v1, "LogToFile init logDir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    sput-object p2, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogToFile init slogDir mkdirs fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSAdSDK_2.6.4.1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/c/c/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BRAND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--SDK_INT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--MANUFACTURER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--CPU_ABI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/c/c/a;->f:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/c/c/a;->g:Z

    goto/16 :goto_2
.end method

.method static synthetic a(Ljava/io/OutputStream;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/c/c/a;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/kwad/sdk/c/c/a;

    monitor-enter v1

    if-eqz p0, :cond_b

    :try_start_5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_42

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    sget-object v0, Lcom/kwad/sdk/c/c/a;->c:Lcom/kwad/sdk/c/c/a$b;

    if-nez v0, :cond_30

    new-instance v0, Lcom/kwad/sdk/c/c/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/c/a$b;-><init>(Lcom/kwad/sdk/c/c/a$a;)V

    sput-object v0, Lcom/kwad/sdk/c/c/a;->c:Lcom/kwad/sdk/c/c/a$b;

    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/kwad/sdk/c/c/a;->c:Lcom/kwad/sdk/c/c/a$b;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "LogToFileThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_30
    sget-object v0, Lcom/kwad/sdk/c/c/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    sget-object v2, Lcom/kwad/sdk/c/c/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_42

    :try_start_38
    sget-object v0, Lcom/kwad/sdk/c/c/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_b

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/c/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private static b(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/kwad/sdk/c/c/a;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/c/a;->a(Ljava/util/List;)V

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/c/c/a;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/c/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/c/a;->a(Ljava/util/List;)V

    goto :goto_4
.end method

.method static synthetic c()Ljava/io/BufferedOutputStream;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/c/c/a;->d()Ljava/io/BufferedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/io/BufferedOutputStream;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d8

    move-result v0

    if-nez v0, :cond_29

    :cond_d
    const-string v0, "KSAdSDK_2.6.4.1"

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogToFile slogDir directory is null or is not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_d8

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "KSAdSDK_2.6.4.1"

    :try_start_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogToFile create slogDir directory fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_d8

    move-result-object v0

    const-string v2, "%s.bin"

    const/4 v3, 0x1

    :try_start_5a
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "yyyy-MM-dd"

    invoke-static {v5, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_df

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_79} :catch_d8

    move-result v4

    if-nez v4, :cond_96

    const-string v0, "KSAdSDK_2.6.4.1"

    :try_start_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogToFile create logFile fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_28

    :cond_96
    const/4 v2, 0x5

    const/4 v4, -0x3

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9b} :catch_d8

    const-string v2, "%s.bin"

    const/4 v4, 0x1

    :try_start_9e
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "yyyy-MM-dd"

    invoke-static {v6, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/kwad/sdk/c/c/a;->d:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_bd
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v2, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    sget-object v2, Lcom/kwad/sdk/c/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d6} :catch_d8

    goto/16 :goto_28

    :catch_d8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_28

    :cond_df
    :try_start_df
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v2, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ec} :catch_d8

    goto/16 :goto_28
.end method
