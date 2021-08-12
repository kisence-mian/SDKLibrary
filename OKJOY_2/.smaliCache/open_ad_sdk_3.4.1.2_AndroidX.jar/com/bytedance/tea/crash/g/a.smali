.class public final Lcom/bytedance/tea/crash/g/a;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 136
    sput-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    .line 277
    sput-object v0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;

    .line 278
    sput-object v0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/tea/crash/g/a;->f:Z

    return-void
.end method

.method private static a(I)J
    .registers 5

    .line 271
    if-gez p0, :cond_5

    .line 272
    const-wide/16 v0, 0x0

    return-wide v0

    .line 274
    :cond_5
    int-to-long v0, p0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 8

    .line 90
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 92
    return-object v0

    .line 97
    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, p1, :cond_34

    .line 98
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 99
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_31

    .line 101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 103
    iget v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_30

    .line 104
    goto :goto_1e

    .line 106
    :cond_30
    return-object v3

    .line 97
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 110
    :cond_34
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .registers 6

    .line 180
    nop

    .line 182
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

    .line 184
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
    .catchall {:try_start_2 .. :try_end_30} :catchall_4a

    .line 187
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :goto_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_40

    .line 189
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 191
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_48

    .line 195
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 191
    return-object v0

    .line 192
    :catchall_48
    move-exception v2

    goto :goto_4c

    :catchall_4a
    move-exception v1

    move-object v1, v0

    .line 195
    :goto_4c
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 196
    nop

    .line 197
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/a;->a(Lorg/json/JSONObject;)V

    .line 210
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 211
    if-eqz p0, :cond_10

    .line 212
    invoke-static {p1, p0}, Lcom/bytedance/tea/crash/g/a;->b(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V

    .line 214
    :cond_10
    invoke-static {p1, p0}, Lcom/bytedance/tea/crash/g/a;->a(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 216
    goto :goto_15

    .line 215
    :catchall_14
    move-exception p0

    .line 217
    :goto_15
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 250
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 251
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 252
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "dalvikPrivateDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 253
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "dalvikPss"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "dalvikSharedDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "nativePrivateDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "nativePss"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "nativeSharedDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "otherPrivateDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "otherPss"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 260
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    const-string v3, "otherSharedDirty"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v2

    const-string v3, "totalPrivateClean"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    const-string v3, "totalPrivateDirty"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "totalPss"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result v2

    const-string v3, "totalSharedClean"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v4, "totalSharedDirty"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v2

    const-string v0, "totalSwappablePss"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    const-string v0, "memory_info"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-string v3, "native_heap_size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    const-string v3, "native_heap_alloc_size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    const-string v3, "native_heap_free_size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-string v4, "max_memory"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-string v4, "free_memory"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    const-string v3, "total_memory"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    if-eqz p1, :cond_53

    .line 229
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const-string v2, "memory_class"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p1

    const-string v1, "large_memory_class"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    :cond_53
    const-string p1, "app_memory_info"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 48
    return v0

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    :try_start_8
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 53
    if-nez p0, :cond_13

    .line 54
    return v0

    .line 56
    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3c

    .line 57
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 58
    if-eqz p0, :cond_3b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 59
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 60
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 61
    return v2

    .line 64
    :cond_3b
    goto :goto_62

    .line 65
    :cond_3c
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 66
    if-eqz p0, :cond_62

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_61

    .line 69
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_63

    return p0

    .line 71
    :cond_61
    goto :goto_46

    .line 76
    :cond_62
    :goto_62
    goto :goto_64

    .line 74
    :catchall_63
    move-exception p0

    .line 77
    :goto_64
    return v0
.end method

.method private static b(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 238
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 239
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 241
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-string p1, "availMem"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    iget-boolean p1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    const-string v2, "lowMemory"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 243
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-string p1, "threshold"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 244
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/g;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v1

    const-string p1, "totalMem"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 245
    const-string p1, "sys_memory_info"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    .line 120
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 122
    return v1

    .line 124
    :cond_10
    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 125
    return v2

    .line 127
    :cond_1e
    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    move v1, v2

    :cond_2d
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    .line 138
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    if-nez v1, :cond_32

    .line 141
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/bytedance/tea/crash/upload/CrashUploadService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    .line 142
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2a

    .line 146
    goto :goto_32

    .line 143
    :catchall_2a
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const-string p0, ":npth"

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    .line 148
    :cond_32
    :goto_32
    if-eqz v0, :cond_3e

    sget-object p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 153
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 155
    return-object v0

    .line 158
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 159
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 160
    if-eqz p0, :cond_35

    .line 161
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_34

    .line 163
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_36

    .line 164
    return-object p0

    .line 166
    :cond_34
    goto :goto_1f

    .line 170
    :cond_35
    goto :goto_3a

    .line 168
    :catchall_36
    move-exception p0

    .line 169
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 171
    :goto_3a
    invoke-static {}, Lcom/bytedance/tea/crash/g/a;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 172
    if-nez p0, :cond_45

    .line 173
    const-string p0, ""

    return-object p0

    .line 175
    :cond_45
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 283
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p0

    .line 284
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    .line 286
    :try_start_a
    const-string v0, "VERSION_NAME"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_12} :catch_13

    .line 288
    goto :goto_14

    .line 287
    :catch_13
    move-exception p0

    .line 291
    :cond_14
    :goto_14
    sget-object p0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_21

    .line 293
    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    return-object p0

    .line 294
    :catchall_20
    move-exception p0

    .line 297
    :cond_21
    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 2

    .line 301
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p0

    .line 302
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    if-eqz p0, :cond_14

    .line 304
    :try_start_a
    const-string v0, "VERSION_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_12} :catch_13

    .line 307
    goto :goto_14

    .line 305
    :catch_13
    move-exception p0

    .line 310
    :cond_14
    :goto_14
    sget-object p0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_25

    .line 312
    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_24

    return p0

    .line 313
    :catchall_24
    move-exception p0

    .line 316
    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/bytedance/tea/crash/g/a;->f:Z

    if-nez v0, :cond_2a

    .line 323
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".BuildConfig"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_25} :catch_26

    .line 325
    goto :goto_27

    .line 324
    :catch_26
    move-exception p0

    .line 326
    :goto_27
    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/tea/crash/g/a;->f:Z

    .line 329
    :cond_2a
    sget-object p0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;

    return-object p0
.end method
