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
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3e} :catch_4c

    :goto_3e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    const-string v0, "{}"

    :goto_46
    return-object v0

    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :catch_4c
    move-exception v1

    goto :goto_3e
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1e
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_55
    .catchall {:try_start_6 .. :try_end_b} :catchall_4a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_58
    .catchall {:try_start_b .. :try_end_e} :catchall_50

    move-result-object v1

    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_40

    :cond_14
    :goto_14
    if-eqz v0, :cond_19

    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_42

    :cond_19
    :goto_19
    if-nez v1, :cond_3b

    const-string v0, "0"

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_21
    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_44

    :cond_26
    :goto_26
    if-eqz v0, :cond_19

    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_19

    :catch_2c
    move-exception v0

    goto :goto_19

    :catchall_2e
    move-exception v0

    move-object v2, v1

    :goto_30
    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_46

    :cond_35
    :goto_35
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_48

    :cond_3a
    :goto_3a
    throw v0

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :catch_40
    move-exception v2

    goto :goto_14

    :catch_42
    move-exception v0

    goto :goto_19

    :catch_44
    move-exception v2

    goto :goto_26

    :catch_46
    move-exception v2

    goto :goto_35

    :catch_48
    move-exception v1

    goto :goto_3a

    :catchall_4a
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_30

    :catchall_50
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_30

    :catch_55
    move-exception v2

    move-object v2, v1

    goto :goto_21

    :catch_58
    move-exception v3

    goto :goto_21
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_c

    :goto_7
    if-nez v0, :cond_f

    const-string v0, ""

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static b()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_7
    new-instance v2, Ljava/io/FileReader;

    const-string v0, "/proc/cpuinfo"

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_73
    .catchall {:try_start_7 .. :try_end_e} :catchall_55

    :try_start_e
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_76
    .catchall {:try_start_e .. :try_end_13} :catchall_6c

    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_46
    .catchall {:try_start_13 .. :try_end_16} :catchall_6e

    move-result-object v1

    if-nez v1, :cond_24

    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_62

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_23

    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_64

    :cond_23
    :goto_23
    return-object v3

    :cond_24
    :try_start_24
    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-lt v4, v6, :cond_13

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_45} :catch_46
    .catchall {:try_start_24 .. :try_end_45} :catchall_6e

    goto :goto_13

    :catch_46
    move-exception v1

    move-object v1, v2

    :goto_48
    if-eqz v0, :cond_4d

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_66

    :cond_4d
    :goto_4d
    if-eqz v1, :cond_23

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_23

    :catch_53
    move-exception v0

    goto :goto_23

    :catchall_55
    move-exception v0

    move-object v2, v1

    :goto_57
    if-eqz v1, :cond_5c

    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_68

    :cond_5c
    :goto_5c
    if-eqz v2, :cond_61

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_6a

    :cond_61
    :goto_61
    throw v0

    :catch_62
    move-exception v0

    goto :goto_1e

    :catch_64
    move-exception v0

    goto :goto_23

    :catch_66
    move-exception v0

    goto :goto_4d

    :catch_68
    move-exception v1

    goto :goto_5c

    :catch_6a
    move-exception v1

    goto :goto_61

    :catchall_6c
    move-exception v0

    goto :goto_57

    :catchall_6e
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_57

    :catch_73
    move-exception v0

    move-object v0, v1

    goto :goto_48

    :catch_76
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_48
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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const/4 v0, -0x1

    goto :goto_e
.end method
