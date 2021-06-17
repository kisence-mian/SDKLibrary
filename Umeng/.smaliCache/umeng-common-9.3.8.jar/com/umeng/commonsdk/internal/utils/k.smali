.class public Lcom/umeng/commonsdk/internal/utils/k;
.super Ljava/lang/Object;
.source "UMProbe.java"


# static fields
.field public static final a:Ljava/lang/String; = "UM_PROBE_DATA"

.field public static final b:Ljava/lang/String; = "_dsk_s"

.field public static final c:Ljava/lang/String; = "_thm_z"

.field public static final d:Ljava/lang/String; = "_gdf_r"

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/k;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    nop

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x1c

    if-le v0, v2, :cond_9

    .line 137
    return v1

    .line 140
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 146
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    nop

    .line 150
    nop

    .line 152
    :cond_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 154
    const/4 p1, 0x1

    .line 155
    goto :goto_30

    .line 152
    :cond_2f
    const/4 p1, -0x1

    .line 162
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_34} :catch_39

    if-eqz p0, :cond_37

    .line 164
    goto :goto_38

    .line 162
    :cond_37
    move v1, p1

    .line 168
    :goto_38
    goto :goto_3b

    .line 166
    :catch_39
    move-exception p0

    .line 167
    nop

    .line 169
    :goto_3b
    return v1
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, "thermal_zone"

    .line 179
    const-string v1, "ls /sys/class/thermal"

    .line 180
    nop

    .line 182
    :try_start_5
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    .line 185
    goto :goto_c

    .line 183
    :catchall_a
    move-exception v1

    const/4 v1, -0x1

    .line 187
    :goto_c
    if-lez v1, :cond_f

    .line 188
    goto :goto_16

    .line 189
    :cond_f
    if-gez v1, :cond_14

    .line 190
    const-string v0, "noper"

    goto :goto_16

    .line 189
    :cond_14
    const-string v0, "unknown"

    .line 193
    :goto_16
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 37
    nop

    .line 39
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UM_PROBE_DATA"

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_48

    .line 44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 45
    sget-object v3, Lcom/umeng/commonsdk/internal/utils/k;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_49

    .line 46
    :try_start_17
    const-string v4, "_dsk_s"

    const-string v5, "_dsk_s"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v4, "_thm_z"

    const-string v5, "_thm_z"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v4, "_gdf_r"

    const-string v5, "_gdf_r"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_45

    .line 50
    :try_start_3f
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_49

    move-object v0, p0

    goto :goto_48

    .line 49
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_48} :catch_49

    .line 54
    :cond_48
    :goto_48
    goto :goto_4d

    .line 52
    :catch_49
    move-exception v1

    .line 53
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 55
    :goto_4d
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/utils/k;->b(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 202
    const-string v0, "goldfish"

    .line 203
    const-string v1, "ls /"

    .line 204
    nop

    .line 206
    :try_start_5
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    .line 209
    goto :goto_c

    .line 207
    :catchall_a
    move-exception v1

    const/4 v1, -0x1

    .line 211
    :goto_c
    if-lez v1, :cond_f

    .line 212
    goto :goto_16

    .line 213
    :cond_f
    if-gez v1, :cond_14

    .line 214
    const-string v0, "noper"

    goto :goto_16

    .line 213
    :cond_14
    const-string v0, "unknown"

    .line 217
    :goto_16
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .line 59
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/k;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 61
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/k$1;

    invoke-direct {v1, v0, p0}, Lcom/umeng/commonsdk/internal/utils/k$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 82
    :cond_1c
    return-void
.end method

.method private static b(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 5

    .line 89
    if-nez p0, :cond_3

    .line 90
    return-void

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "UM_PROBE_DATA"

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 95
    if-eqz p0, :cond_39

    .line 96
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/k;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "_dsk_s"

    aget-object v1, p1, v1

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "_thm_z"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 98
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "_gdf_r"

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 99
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_36

    throw p0

    .line 102
    :cond_39
    :goto_39
    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 6

    .line 226
    nop

    .line 227
    nop

    .line 229
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/diskstats"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_40

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 235
    nop

    .line 236
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_3d

    const-string v2, "mtd"

    const-string v3, "sda"

    const-string v4, "mmcblk"

    if-eqz v0, :cond_3a

    .line 237
    :try_start_20
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 238
    nop

    .line 239
    move-object v2, v4

    goto :goto_3c

    .line 240
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 241
    nop

    .line 242
    move-object v2, v3

    goto :goto_3c

    .line 243
    :cond_32
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_3d

    if-eqz v0, :cond_14

    .line 244
    nop

    .line 245
    goto :goto_3c

    .line 252
    :cond_3a
    const-string v2, "unknown"

    :goto_3c
    goto :goto_44

    .line 249
    :catchall_3d
    move-exception v0

    move-object v0, v1

    goto :goto_41

    :catchall_40
    move-exception v1

    .line 251
    :goto_41
    const-string v2, "noper"

    move-object v1, v0

    .line 255
    :goto_44
    if-eqz v1, :cond_4c

    .line 256
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4c

    .line 258
    :catchall_4a
    move-exception v0

    goto :goto_4d

    .line 260
    :cond_4c
    :goto_4c
    nop

    .line 262
    :goto_4d
    return-object v2
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .line 110
    nop

    .line 111
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 113
    const-string v1, "UM_PROBE_DATA"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 115
    if-eqz p0, :cond_1f

    .line 116
    const-string v1, "_dsk_s"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 118
    const/4 v0, 0x1

    .line 122
    :cond_1f
    return v0
.end method
