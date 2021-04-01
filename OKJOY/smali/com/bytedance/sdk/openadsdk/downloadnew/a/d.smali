.class public final Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.super Ljava/lang/Object;
.source "LibHolder.java"


# static fields
.field public static volatile a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Lcom/ss/android/a/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g:Lcom/ss/android/a/a/b/a/a;

    .line 107
    :try_start_19
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_25} :catch_26

    .line 110
    :goto_25
    return-void

    .line 108
    :catch_26
    move-exception v0

    goto :goto_25
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method public static a()V
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    :try_start_1
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    if-eqz v1, :cond_42

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_42

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_b4

    move-result v0

    if-nez v0, :cond_b2

    .line 149
    :try_start_27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_41} :catch_aa

    move-object v0, v1

    .line 156
    :cond_42
    :goto_42
    :try_start_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_64

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 175
    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/l;->a()V

    .line 181
    :cond_8b
    const-string v0, "LibHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_a9
    return-void

    .line 150
    :catch_aa
    move-exception v0

    .line 151
    const-string v2, "LibHolder"

    const-string v3, "download dir error: "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_b2} :catch_b4

    :cond_b2
    move-object v0, v1

    goto :goto_42

    .line 182
    :catch_b4
    move-exception v0

    goto :goto_a9
.end method

.method public static a(I)V
    .registers 3

    .prologue
    .line 240
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 241
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_d
    return-void
.end method

.method public static a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 4

    .prologue
    .line 246
    if-eqz p1, :cond_1a

    .line 247
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 248
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    .line 250
    :cond_11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1a
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 117
    if-nez p0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    .line 118
    :cond_6
    if-nez p0, :cond_9

    .line 134
    :cond_8
    :goto_8
    return-void

    .line 122
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a()V

    .line 126
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    const-class v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    monitor-enter v1

    .line 128
    :try_start_1d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    .line 129
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    .line 130
    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    :cond_30
    monitor-exit v1

    goto :goto_8

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 303
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move v0, v1

    .line 315
    :goto_a
    return v0

    .line 307
    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 310
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 311
    const/4 v0, 0x1

    goto :goto_a

    :cond_37
    move v0, v1

    .line 315
    goto :goto_a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/Object;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    if-nez p2, :cond_11

    :cond_f
    move v6, v0

    .line 279
    :cond_10
    :goto_10
    return v6

    .line 265
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h()Ljava/util/Map;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_50

    .line 267
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v0

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;

    .line 270
    if-eqz v0, :cond_4e

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    .line 271
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;->a(ILcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 272
    if-nez v6, :cond_4e

    if-nez v0, :cond_4e

    .line 273
    const/4 v6, 0x1

    move v0, v6

    :goto_4c
    move v6, v0

    .line 276
    goto :goto_20

    :cond_4e
    move v0, v6

    goto :goto_4c

    :cond_50
    move v6, v0

    goto :goto_10
.end method

.method public static b()Z
    .registers 3

    .prologue
    .line 192
    const/4 v0, 0x1

    .line 193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_15

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 196
    :cond_15
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 323
    if-nez p0, :cond_6

    move v0, v1

    .line 368
    :goto_5
    return v0

    .line 327
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 329
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 331
    const-string v0, ""

    .line 334
    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->i()V

    .line 336
    invoke-static {v3}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/a/a/a;

    move-result-object v4

    .line 337
    if-nez v4, :cond_25

    move v0, v1

    .line 338
    goto :goto_5

    .line 342
    :cond_25
    new-instance v1, Lcom/ss/android/a/a/c/a$a;

    invoke-direct {v1}, Lcom/ss/android/a/a/c/a$a;-><init>()V

    const-string v5, "143"

    .line 343
    invoke-virtual {v1, v5}, Lcom/ss/android/a/a/c/a$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v1

    const-string v5, "open_news"

    .line 344
    invoke-virtual {v1, v5}, Lcom/ss/android/a/a/c/a$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v1

    const-string v5, "2.9.5.3"

    .line 345
    invoke-virtual {v1, v5}, Lcom/ss/android/a/a/c/a$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v1

    const/16 v5, 0xb89

    .line 346
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ss/android/a/a/c/a$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/a$a;->a()Lcom/ss/android/a/a/c/a;

    move-result-object v1

    .line 349
    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/g;)Lcom/ss/android/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/e;)Lcom/ss/android/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/j;)Lcom/ss/android/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/f;)Lcom/ss/android/a/a/a;

    move-result-object v4

    .line 353
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/h;)Lcom/ss/android/a/a/a;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;

    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-interface {v4, v5}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/a;)Lcom/ss/android/a/a/a;

    move-result-object v4

    .line 355
    invoke-interface {v4, v1}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/c/a;)Lcom/ss/android/a/a/a;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".TTFileProvider"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-interface {v1, v0}, Lcom/ss/android/a/a/a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/a;

    .line 358
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Z)V

    .line 359
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Landroid/content/Context;)V

    .line 362
    invoke-static {v3}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h;->d()Lcom/ss/android/downloadad/a/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ss/android/downloadad/a/a;->a(I)V

    .line 364
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 365
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g:Lcom/ss/android/a/a/b/a/a;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/h;->a(Lcom/ss/android/a/a/b/a/a;)V

    :cond_bf
    move v0, v2

    .line 368
    goto/16 :goto_5
.end method

.method public static c()V
    .registers 3

    .prologue
    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_13

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->F()Z

    move-result v0

    .line 206
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    if-eq v1, v0, :cond_13

    .line 208
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a()V

    .line 214
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/a/a/a;

    move-result-object v0

    .line 215
    if-nez v0, :cond_1e

    .line 222
    :goto_1d
    return-void

    .line 218
    :cond_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/h;)Lcom/ss/android/a/a/a;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_1d

    .line 219
    :catch_2a
    move-exception v0

    .line 220
    const-string v1, "LibHolder"

    const-string v2, "sync config error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method private static c(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 402
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    .line 403
    if-nez v0, :cond_7

    .line 413
    :goto_6
    return-void

    .line 407
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->L()I

    move-result v0

    .line 408
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/g;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/g;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v1

    .line 410
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(I)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(Lcom/ss/android/socialbase/downloader/i/f;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    goto :goto_6
.end method

.method public static d()Lcom/ss/android/downloadlib/h;
    .registers 1

    .prologue
    .line 225
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 226
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Landroid/content/Context;)Z

    .line 228
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .registers 2

    .prologue
    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h;->g()V

    .line 233
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 234
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    .line 237
    :cond_19
    return-void
.end method

.method static synthetic f()Landroid/content/Context;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static g()Landroid/content/Context;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    goto :goto_8
.end method

.method private static h()Ljava/util/Map;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static i()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 373
    const/4 v1, 0x5

    .line 374
    const/4 v0, 0x2

    .line 377
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_63

    .line 379
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->G()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_5c

    move-result v2

    .line 380
    :try_start_d
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->H()I

    move-result v1

    .line 381
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->I()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_5f

    move-result v0

    .line 386
    :goto_15
    if-nez v2, :cond_61

    .line 391
    :goto_17
    const v0, 0xea60

    mul-int/2addr v0, v1

    .line 393
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/appdownloader/d;->b(I)V

    .line 394
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(I)V

    .line 395
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/appdownloader/d;->a(J)V

    .line 396
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/appdownloader/d;->b(J)V

    .line 398
    const-string v1, "LibHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 383
    :catch_5c
    move-exception v2

    move v2, v3

    goto :goto_15

    :catch_5f
    move-exception v4

    goto :goto_15

    :cond_61
    move v3, v0

    goto :goto_17

    :cond_63
    move v2, v3

    goto :goto_15
.end method
