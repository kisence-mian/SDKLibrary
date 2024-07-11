.class public Lcom/bytedance/tea/crash/g/c;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 35
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

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

    move-result-object p0

    const-string v0, "emotionui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 29
    const/4 p0, 0x1

    return p0

    .line 31
    :cond_22
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->b()Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 39
    nop

    .line 40
    nop

    .line 42
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 43
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3c

    .line 45
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3a

    .line 50
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 51
    nop

    .line 52
    return-object v0

    .line 47
    :catchall_3a
    move-exception p0

    goto :goto_3e

    :catchall_3c
    move-exception p0

    move-object v1, v0

    .line 48
    :goto_3e
    nop

    .line 50
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 48
    return-object v0
.end method

.method public static b()Z
    .registers 4

    .line 56
    nop

    .line 58
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_38

    const-string v2, "huawei"

    if-nez v1, :cond_1c

    :try_start_c
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_1c
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_38

    if-eqz v1, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 64
    :goto_37
    goto :goto_39

    .line 62
    :catchall_38
    move-exception v1

    .line 65
    :goto_39
    return v0
.end method

.method public static c()Z
    .registers 2

    .line 69
    sget-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    if-nez v0, :cond_18

    .line 71
    const/4 v0, 0x1

    :try_start_5
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_14

    .line 73
    sput-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z

    .line 74
    sput-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    .line 75
    sget-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    return v0

    .line 79
    :cond_14
    goto :goto_16

    .line 77
    :catch_15
    move-exception v1

    .line 80
    :goto_16
    sput-boolean v0, Lcom/bytedance/tea/crash/g/c;->a:Z

    .line 82
    :cond_18
    sget-boolean v0, Lcom/bytedance/tea/crash/upload/b;->a:Z

    return v0
.end method

.method public static d()Z
    .registers 2

    .line 86
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method
