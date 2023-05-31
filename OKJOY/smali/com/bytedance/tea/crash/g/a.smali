.class public final Lcom/bytedance/tea/crash/g/a;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
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

    .prologue
    .line 271
    if-gez p0, :cond_5

    .line 272
    const-wide/16 v0, 0x0

    .line 274
    :goto_4
    return-wide v0

    :cond_5
    int-to-long v0, p0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    if-nez v0, :cond_d

    move-object v1, v2

    .line 110
    :cond_c
    :goto_c
    return-object v1

    .line 97
    :cond_d
    const/4 v1, 0x0

    move v3, v1

    :goto_f
    if-ge v3, p1, :cond_36

    .line 98
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 99
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_32

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 103
    iget v5, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    goto :goto_20

    .line 97
    :cond_32
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    :cond_36
    move-object v1, v2

    .line 110
    goto :goto_c
.end method

.method private static a()Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    :try_start_1
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
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_56
    .catchall {:try_start_1 .. :try_end_2f} :catchall_4c

    .line 187
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :goto_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_44

    .line 189
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3e} :catch_3f
    .catchall {:try_start_2f .. :try_end_3e} :catchall_54

    goto :goto_34

    .line 192
    :catch_3f
    move-exception v2

    .line 195
    :goto_40
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 197
    :goto_43
    return-object v0

    .line 191
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_3f
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    move-result-object v0

    .line 195
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto :goto_43

    :catchall_4c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_50
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_54
    move-exception v0

    goto :goto_50

    .line 192
    :catch_56
    move-exception v1

    move-object v1, v0

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/a;->a(Lorg/json/JSONObject;)V

    .line 210
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    if-eqz v0, :cond_10

    .line 212
    invoke-static {p1, v0}, Lcom/bytedance/tea/crash/g/a;->b(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V

    .line 214
    :cond_10
    invoke-static {p1, v0}, Lcom/bytedance/tea/crash/g/a;->a(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 217
    :goto_13
    return-void

    .line 215
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method private static a(Lorg/json/JSONObject;)V
    .registers 7
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 250
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 251
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 252
    const-string v2, "dalvikPrivateDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 253
    const-string v2, "dalvikPss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    const-string v2, "dalvikSharedDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    const-string v2, "nativePrivateDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v2, "nativePss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string v2, "nativeSharedDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    const-string v2, "otherPrivateDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    const-string v2, "otherPss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 260
    const-string v2, "otherSharedDirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v2, "totalPrivateClean"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v2, "totalPrivateDirty"

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v2, "totalPss"

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    const-string v2, "totalSharedClean"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v2, "totalSharedDirty"

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    const-string v2, "totalSwappablePss"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/b;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->a(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    const-string v0, "memory_info"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    .registers 8
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v1, "native_heap_size"

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    const-string v1, "native_heap_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    const-string v1, "native_heap_free_size"

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 225
    const-string v2, "max_memory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    const-string v2, "free_memory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    const-string v2, "total_memory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    if-eqz p1, :cond_53

    .line 229
    const-string v1, "memory_class"

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v1, "large_memory_class"

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    :cond_53
    const-string v1, "app_memory_info"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_6

    move v0, v1

    .line 77
    :goto_5
    return v0

    .line 50
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    :try_start_a
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 53
    if-nez v0, :cond_16

    move v0, v1

    .line 54
    goto :goto_5

    .line 56
    :cond_16
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_40

    .line 57
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 59
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 60
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    move v0, v2

    .line 61
    goto :goto_5

    .line 65
    :cond_40
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_67

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4a

    .line 69
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_64} :catch_66

    move-result v0

    goto :goto_5

    .line 74
    :catch_66
    move-exception v0

    :cond_67
    move v0, v1

    .line 77
    goto :goto_5
.end method

.method private static b(Lorg/json/JSONObject;Landroid/app/ActivityManager;)V
    .registers 8
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 238
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 239
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 241
    const-string v2, "availMem"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string v2, "lowMemory"

    iget-boolean v3, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 243
    const-string v2, "threshold"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 244
    const-string v2, "totalMem"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/g;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 245
    const-string v1, "sys_memory_info"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_12

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    .line 127
    :cond_11
    :goto_11
    return v0

    .line 124
    :cond_12
    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 127
    :cond_1e
    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_2c
    move v0, v1

    goto :goto_11
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 138
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 139
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 141
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/bytedance/tea/crash/upload/CrashUploadService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    sget-object v2, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2d} :catch_39

    .line 148
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_42

    sget-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    :goto_38
    return v0

    .line 143
    :catch_39
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const-string v0, ":npth"

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/lang/String;

    goto :goto_2d

    .line 148
    :cond_42
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 175
    :goto_8
    return-object v0

    .line 158
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 159
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 160
    if-eqz v0, :cond_3a

    .line 161
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1f

    .line 163
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_35} :catch_36

    goto :goto_8

    .line 168
    :catch_36
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 171
    :cond_3a
    invoke-static {}, Lcom/bytedance/tea/crash/g/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    if-nez v0, :cond_47

    .line 173
    const-string v0, ""

    goto :goto_8

    .line 175
    :cond_47
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/String;

    goto :goto_8
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    if-nez v1, :cond_12

    if-eqz v0, :cond_12

    .line 286
    :try_start_a
    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_12} :catch_24

    .line 291
    :cond_12
    :goto_12
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_21

    .line 293
    :try_start_16
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_20

    .line 297
    :goto_1f
    return-object v0

    .line 294
    :catch_20
    move-exception v0

    .line 297
    :cond_21
    const-string v0, ""

    goto :goto_1f

    .line 287
    :catch_24
    move-exception v0

    goto :goto_12
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 301
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/a;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    if-nez v1, :cond_12

    if-eqz v0, :cond_12

    .line 304
    :try_start_a
    const-string v1, "VERSION_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_12} :catch_27

    .line 310
    :cond_12
    :goto_12
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_25

    .line 312
    :try_start_16
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_22} :catch_24

    move-result v0

    .line 316
    :goto_23
    return v0

    .line 313
    :catch_24
    move-exception v0

    .line 316
    :cond_25
    const/4 v0, -0x1

    goto :goto_23

    .line 305
    :catch_27
    move-exception v0

    goto :goto_12
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/Class;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/bytedance/tea/crash/g/a;->f:Z

    if-nez v0, :cond_28

    .line 323
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".BuildConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_25} :catch_2b

    .line 326
    :goto_25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/g/a;->f:Z

    .line 329
    :cond_28
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->c:Ljava/lang/Class;

    return-object v0

    .line 324
    :catch_2b
    move-exception v0

    goto :goto_25
.end method
