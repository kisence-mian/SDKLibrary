.class public Lcom/bytedance/sdk/adnet/d/g;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 68
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_62
    .catchall {:try_start_1 .. :try_end_2f} :catchall_52

    .line 69
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    :goto_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_46

    .line 73
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3e} :catch_3f
    .catchall {:try_start_2f .. :try_end_3e} :catchall_60

    goto :goto_34

    .line 78
    :catch_3f
    move-exception v2

    .line 80
    :goto_40
    if-eqz v1, :cond_45

    .line 82
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_5c

    .line 89
    :cond_45
    :goto_45
    return-object v0

    .line 76
    :cond_46
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_3f
    .catchall {:try_start_46 .. :try_end_49} :catchall_60

    move-result-object v0

    .line 80
    if-eqz v1, :cond_45

    .line 82
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_45

    .line 83
    :catch_50
    move-exception v1

    goto :goto_45

    .line 80
    :catchall_52
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_56
    if-eqz v1, :cond_5b

    .line 82
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5e

    .line 87
    :cond_5b
    :goto_5b
    throw v0

    .line 83
    :catch_5c
    move-exception v1

    goto :goto_45

    :catch_5e
    move-exception v1

    goto :goto_5b

    .line 80
    :catchall_60
    move-exception v0

    goto :goto_56

    .line 78
    :catch_62
    move-exception v1

    move-object v1, v0

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 25
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_18

    const-string v1, ":push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ":pushservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_10

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 34
    :cond_f
    :goto_f
    return v0

    :cond_10
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 39
    sget-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 60
    :goto_8
    return-object v0

    .line 44
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 45
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 46
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 50
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1d

    .line 51
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_34

    goto :goto_8

    .line 55
    :catch_34
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_38
    invoke-static {}, Lcom/bytedance/sdk/adnet/d/g;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/lang/String;

    goto :goto_8
.end method
