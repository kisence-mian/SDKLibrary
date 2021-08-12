.class public Lcom/bytedance/sdk/openadsdk/utils/aa;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 6

    .line 48
    nop

    .line 50
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_6f

    .line 55
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :goto_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_40

    .line 57
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 59
    :cond_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->a()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 60
    const-string v3, "Process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get processName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_30 .. :try_end_66} :catchall_6d

    .line 66
    nop

    .line 68
    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 71
    goto :goto_6c

    .line 69
    :catch_6b
    move-exception v1

    .line 62
    :goto_6c
    return-object v0

    .line 63
    :catchall_6d
    move-exception v2

    goto :goto_71

    :catchall_6f
    move-exception v1

    move-object v1, v0

    .line 66
    :goto_71
    if-eqz v1, :cond_79

    .line 68
    :try_start_73
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    .line 71
    :goto_76
    goto :goto_79

    .line 69
    :catch_77
    move-exception v1

    goto :goto_76

    .line 74
    :cond_79
    :goto_79
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 25
    return-object v0

    .line 28
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 29
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 31
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 32
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_52

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->a()Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 34
    const-string p0, "Process"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4d
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_51} :catch_54

    .line 37
    return-object p0

    .line 39
    :cond_52
    goto :goto_1d

    .line 42
    :cond_53
    goto :goto_58

    .line 40
    :catch_54
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :goto_58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Ljava/lang/String;

    .line 44
    return-object p0
.end method
