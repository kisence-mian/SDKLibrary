.class public Lcom/ta/utdid2/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 7

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 15
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 16
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 17
    invoke-static {v1}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v1

    .line 18
    invoke-static {v0}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v0

    .line 19
    invoke-static {v2}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v2

    .line 20
    invoke-static {v3}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v3

    .line 21
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 22
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v1, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v0, v5, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const/16 v0, 0x8

    invoke-static {v2, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    const/16 v0, 0xc

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 30
    nop

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    invoke-static {}, Lcom/ta/utdid2/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_c
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 37
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_16
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 40
    invoke-static {}, Lcom/ta/utdid2/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_20
    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    .line 67
    const-string v0, "ro.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/g;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 70
    const-string v0, "ro.sys.aliyun.clouduuid"

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/g;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 74
    invoke-static {}, Lcom/ta/utdid2/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1f
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 46
    const-string v0, ""

    .line 48
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_30

    .line 50
    :try_start_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "a5f5faddde9e9f02"

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "8e17f7422b35fbea"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "0000000000000000"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2d

    if-eqz v1, :cond_2b

    goto :goto_2c

    .line 58
    :cond_2b
    goto :goto_32

    .line 54
    :cond_2c
    :goto_2c
    return-object v0

    .line 56
    :catchall_2d
    move-exception v0

    move-object v0, p0

    goto :goto_31

    :catchall_30
    move-exception p0

    :goto_31
    move-object p0, v0

    .line 60
    :goto_32
    return-object p0
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    .line 81
    nop

    .line 83
    :try_start_1
    const-string v0, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    const-string v1, "getCloudUUID"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 88
    goto :goto_1d

    .line 86
    :catch_1a
    move-exception v0

    const-string v0, ""

    .line 89
    :goto_1d
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 93
    const/4 p0, 0x0

    return-object p0
.end method
