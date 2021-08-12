.class public Lcom/kwad/sdk/crash/utils/SystemUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/utils/SystemUtil$a;,
        Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:I

.field private static e:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kwad/sdk/crash/utils/SystemUtil;->b:J

    sput-wide v0, Lcom/kwad/sdk/crash/utils/SystemUtil;->c:J

    const/4 v0, 0x0

    sput v0, Lcom/kwad/sdk/crash/utils/SystemUtil;->d:I

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/crash/utils/SystemUtil;->e:Lcom/kwad/sdk/crash/utils/SystemUtil$LEVEL;

    return-void
.end method

.method public static a()J
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_44
    .catchall {:try_start_1 .. :try_end_f} :catchall_40

    :cond_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "MemTotal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_3e
    .catchall {:try_start_f .. :try_end_2e} :catchall_57

    const/16 v3, 0xa

    shl-long/2addr v0, v3

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v2

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_39
    return-wide v0

    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_50

    goto :goto_54

    :catch_3e
    move-exception v0

    goto :goto_47

    :catchall_40
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_58

    :catch_44
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_47
    :try_start_47
    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_57

    if-eqz v2, :cond_54

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_57
    move-exception v0

    :goto_58
    if-eqz v2, :cond_62

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;

    return-object p0

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_23

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    sget-object p0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8b

    const/4 p0, 0x0

    :try_start_45
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/self/cmdline"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_56} :catch_7b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_56} :catch_76
    .catchall {:try_start_45 .. :try_end_56} :catchall_71

    :try_start_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    if-lez v1, :cond_66

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_6c} :catch_6f
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6c} :catch_6d
    .catchall {:try_start_56 .. :try_end_6c} :catchall_86

    goto :goto_82

    :catch_6d
    move-exception p0

    goto :goto_7f

    :catch_6f
    move-exception p0

    goto :goto_7f

    :catchall_71
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_87

    :catch_76
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_7f

    :catch_7b
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_7f
    :try_start_7f
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_86

    :goto_82
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    goto :goto_8b

    :catchall_86
    move-exception p0

    :goto_87
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    throw p0

    :cond_8b
    :goto_8b
    sget-object p0, Lcom/kwad/sdk/crash/utils/SystemUtil;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, -0x1

    move v1, v0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_26

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-gt v2, v3, :cond_20

    if-ne v1, v0, :cond_23

    move v1, p1

    goto :goto_23

    :cond_20
    if-eq v1, v0, :cond_23

    goto :goto_27

    :cond_23
    :goto_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_26
    move p1, v0

    :goto_27
    if-ne v1, v0, :cond_2b

    const/4 p0, 0x0

    goto :goto_36

    :cond_2b
    if-ne p1, v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    :cond_32
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_36
    return-object p0
.end method

.method public static a(I)Z
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/crash/utils/SystemUtil;->b()I

    move-result v0

    if-lt v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static b()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static b(Landroid/content/Context;)J
    .registers 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static c()Lcom/kwad/sdk/crash/utils/SystemUtil$a;
    .registers 8

    const-string v0, "Threads:"

    const-string v1, "VmRSS:"

    const-string v2, "VmSize"

    new-instance v3, Lcom/kwad/sdk/crash/utils/SystemUtil$a;

    invoke-direct {v3}, Lcom/kwad/sdk/crash/utils/SystemUtil$a;-><init>()V

    const/4 v4, 0x0

    :try_start_c
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/self/status"

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_81
    .catchall {:try_start_c .. :try_end_15} :catchall_7f

    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_75

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_7c
    .catchall {:try_start_15 .. :try_end_26} :catchall_79

    const-string v7, "kB"

    if-eqz v6, :cond_41

    :try_start_2a
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {v4, v2}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->b:J

    goto :goto_15

    :cond_41
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-static {v4, v1}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->c:J

    goto :goto_15

    :cond_5e
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v4, v0}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->f:I
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_74} :catch_7c
    .catchall {:try_start_2a .. :try_end_74} :catchall_79

    goto :goto_15

    :cond_75
    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Closeable;)V

    goto :goto_88

    :catchall_79
    move-exception v0

    move-object v4, v5

    goto :goto_89

    :catch_7c
    move-exception v0

    move-object v4, v5

    goto :goto_82

    :catchall_7f
    move-exception v0

    goto :goto_89

    :catch_81
    move-exception v0

    :goto_82
    :try_start_82
    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_7f

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Closeable;)V

    :goto_88
    return-object v3

    :goto_89
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method
