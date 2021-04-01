.class public Lcom/bytedance/tea/crash/g/c;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->a()Ljava/lang/String;

    move-result-object p0

    .line 27
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "emotionui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_21
    return v0

    :cond_22
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->b()Z

    move-result v0

    goto :goto_21
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 39
    .line 42
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 43
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_37
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3d

    .line 45
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_47
    .catchall {:try_start_2c .. :try_end_33} :catchall_45

    .line 50
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 52
    :goto_36
    return-object v0

    .line 47
    :catch_37
    move-exception v1

    move-object v1, v0

    .line 50
    :goto_39
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto :goto_36

    :catchall_3d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_41
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_45
    move-exception v0

    goto :goto_41

    .line 47
    :catch_47
    move-exception v2

    goto :goto_39
.end method

.method public static b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    :cond_1b
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_37

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    const/4 v0, 0x1

    .line 65
    :cond_36
    :goto_36
    return v0

    .line 62
    :catch_37
    move-exception v1

    goto :goto_36
.end method

.method public static c()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 69
    sget-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    if-nez v0, :cond_19

    .line 71
    :try_start_5
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_17

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    .line 75
    sget-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 82
    :goto_15
    return v0

    .line 77
    :catch_16
    move-exception v0

    .line 80
    :cond_17
    sput-boolean v1, Lcom/bytedance/tea/crash/g/c;->a:Z

    .line 82
    :cond_19
    sget-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z

    goto :goto_15
.end method

.method public static d()Z
    .registers 2

    .prologue
    .line 86
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
