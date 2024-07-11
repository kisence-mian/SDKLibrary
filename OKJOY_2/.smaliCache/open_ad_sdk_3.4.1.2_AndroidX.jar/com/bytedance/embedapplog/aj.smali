.class Lcom/bytedance/embedapplog/aj;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 3

    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 22
    return-void
.end method

.method private a()Z
    .registers 3

    .line 47
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 49
    :catch_13
    move-exception v1

    .line 52
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 67
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aj;->d()Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "emotionui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 71
    const/4 p1, 0x1

    return p1

    .line 73
    :cond_1e
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aj;->c()Z

    move-result p1

    return p1
.end method

.method private b()Z
    .registers 3

    .line 56
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_12
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 57
    const-string v1, "flyme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 56
    :goto_1f
    return v0
.end method

.method private c()Z
    .registers 3

    .line 61
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "huawei"

    if-nez v0, :cond_16

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 61
    :goto_2d
    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 5

    .line 77
    nop

    .line 78
    nop

    .line 80
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop ro.build.version.emui"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2e

    .line 83
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2c

    .line 89
    nop

    .line 91
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 94
    :goto_28
    goto :goto_2b

    .line 92
    :catch_29
    move-exception v1

    goto :goto_28

    .line 97
    :goto_2b
    return-object v0

    .line 85
    :catchall_2c
    move-exception v1

    goto :goto_30

    :catchall_2e
    move-exception v1

    move-object v2, v0

    .line 86
    :goto_30
    :try_start_30
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3c

    .line 87
    nop

    .line 89
    if-eqz v2, :cond_3b

    .line 91
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 94
    goto :goto_3b

    .line 92
    :catch_3a
    move-exception v1

    .line 87
    :cond_3b
    :goto_3b
    return-object v0

    .line 89
    :catchall_3c
    move-exception v0

    if-eqz v2, :cond_44

    .line 91
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 94
    goto :goto_44

    .line 92
    :catch_43
    move-exception v1

    .line 94
    :cond_44
    :goto_44
    throw v0
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aj;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 28
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 29
    :cond_13
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aj;->b()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 30
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 32
    :cond_1f
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aj;->d()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lcom/bytedance/embedapplog/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 34
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_3d
    :goto_3d
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rom"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const/4 p1, 0x1

    return p1
.end method
