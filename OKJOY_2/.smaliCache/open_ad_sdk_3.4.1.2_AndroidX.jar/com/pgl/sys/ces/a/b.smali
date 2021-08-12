.class public Lcom/pgl/sys/ces/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pgl/sys/ces/a/b$1;

    invoke-direct {v0}, Lcom/pgl/sys/ces/a/b$1;-><init>()V

    sput-object v0, Lcom/pgl/sys/ces/a/b;->a:Ljava/io/FileFilter;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/pgl/sys/ces/a/b;->b()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "core"

    invoke-static {}, Lcom/pgl/sys/ces/a/b;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "Hardware"

    invoke-static {v1, v2}, Lcom/pgl/sys/ces/a/b;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hw"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "max"

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v3}, Lcom/pgl/sys/ces/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "min"

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v3}, Lcom/pgl/sys/ces/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Features"

    invoke-static {v1, v2}, Lcom/pgl/sys/ces/a/b;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ft"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    goto :goto_40

    :catchall_3f
    move-exception v1

    :goto_40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    const-string v0, "{}"

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1c

    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1a

    :try_start_f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception p0

    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_2c

    :catchall_18
    move-exception p0

    goto :goto_2c

    :catchall_1a
    move-exception v2

    goto :goto_22

    :catchall_1c
    move-exception p0

    move-object p0, v0

    goto :goto_22

    :catchall_1f
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    :goto_22
    if-eqz p0, :cond_29

    :try_start_24
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_29

    :catchall_28
    move-exception p0

    :cond_29
    :goto_29
    if-eqz v1, :cond_2c

    goto :goto_14

    :cond_2c
    :goto_2c
    if-nez v0, :cond_31

    const-string p0, "0"

    goto :goto_35

    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_35
    return-object p0
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p0

    const/4 p0, 0x0

    :goto_9
    if-nez p0, :cond_e

    const-string p0, ""

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method private static b()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4c

    :try_start_d
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_4a

    :goto_12
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_47

    if-nez v1, :cond_23

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_1d

    :catchall_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_58

    :catchall_21
    move-exception v1

    goto :goto_58

    :cond_23
    :try_start_23
    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-ge v4, v5, :cond_2e

    goto :goto_12

    :cond_2e
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_43

    goto :goto_12

    :cond_43
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_47

    goto :goto_12

    :catchall_47
    move-exception v1

    move-object v1, v3

    goto :goto_4e

    :catchall_4a
    move-exception v3

    goto :goto_4e

    :catchall_4c
    move-exception v2

    move-object v2, v1

    :goto_4e
    if-eqz v1, :cond_55

    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_55

    :catchall_54
    move-exception v1

    :cond_55
    :goto_55
    if-eqz v2, :cond_58

    goto :goto_1d

    :cond_58
    :goto_58
    return-object v0
.end method

.method private static c()I
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pgl/sys/ces/a/b;->a:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    const/4 v0, -0x1

    :goto_11
    return v0
.end method
