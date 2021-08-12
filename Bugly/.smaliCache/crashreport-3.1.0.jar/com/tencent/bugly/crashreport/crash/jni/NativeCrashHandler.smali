.class public Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/a;


# static fields
.field private static a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private static l:Z

.field private static m:Z

.field private static o:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/proguard/w;

.field private e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

.field private f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private n:Lcom/tencent/bugly/crashreport/crash/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 65
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;)V
    .registers 9

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    .line 50
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 54
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    .line 126
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    .line 129
    :try_start_12
    invoke-static {p6}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 130
    goto :goto_40

    .line 132
    :cond_19
    const-string p6, "bugly"

    invoke-virtual {p1, p6, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p6

    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p6
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_24

    .line 137
    goto :goto_40

    .line 134
    :catchall_24
    move-exception p6

    .line 135
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p6

    iget-object p6, p6, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "/app_bugly"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 138
    :goto_40
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->n:Lcom/tencent/bugly/crashreport/crash/b;

    .line 139
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 141
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/proguard/w;

    .line 142
    iput-boolean p5, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    .line 143
    new-instance p4, Lcom/tencent/bugly/crashreport/crash/jni/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/tencent/bugly/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized a(Z)V
    .registers 12

    monitor-enter p0

    .line 288
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 289
    const-string p1, "[Native] Native crash report has already registered."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a9

    .line 290
    monitor-exit p0

    return-void

    .line 293
    :cond_f
    :try_start_f
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1a9

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_d1

    .line 295
    :try_start_15
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 296
    if-eqz p1, :cond_c6

    .line 297
    const-string v0, "[Native] Native Crash Report enable."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 298
    const-string v0, "[Native] Check extra jni for Bugly NDK v%s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "2.1.1"

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "2.3.0"

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_79

    :cond_63
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "00"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_c8

    goto :goto_5e

    :cond_79
    :goto_79
    :try_start_79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v2, v0, :cond_85

    sput-boolean v3, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    :cond_85
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v0, v2, :cond_93

    sput-boolean v3, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_92

    goto :goto_93

    :catchall_92
    move-exception v0

    :cond_93
    :goto_93
    :try_start_93
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-eqz v0, :cond_9f

    const-string v0, "[Native] Info setting jni can be accessed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_9f
    const-string v0, "[Native] Info setting jni can not be accessed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_a6
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_b2

    const-string v0, "[Native] Extra jni can be accessed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_b9

    :cond_b2
    const-string v0, "[Native] Extra jni can not be accessed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    :goto_b9
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 300
    sget-boolean p1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Z)V

    .line 301
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_c4
    .catchall {:try_start_93 .. :try_end_c4} :catchall_c8

    .line 302
    monitor-exit p0

    return-void

    .line 306
    :cond_c6
    :goto_c6
    goto/16 :goto_1a3

    .line 304
    :catchall_c8
    move-exception p1

    .line 305
    :try_start_c9
    const-string p1, "[Native] Failed to load Bugly SO file."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_c6

    .line 307
    :cond_d1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_1a9

    if-eqz v0, :cond_1a3

    .line 309
    :try_start_d5
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v4, "registNativeExceptionHandler2"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v5, v1

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v7, 0x5

    if-eqz p1, :cond_100

    move v9, v3

    goto :goto_101

    :cond_100
    move v9, v7

    :goto_101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v6, v5}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    if-nez v0, :cond_149

    .line 315
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v4, "registNativeExceptionHandler"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v8, v6, v1

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->K()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v0, v4, v9, v5, v6}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    :cond_149
    if-eqz v0, :cond_1a1

    .line 323
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 324
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    iput-object v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 325
    const-string v2, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v4, "checkExtraJni"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v2, v4, v9, v5, v6}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 328
    if-eqz v0, :cond_172

    .line 329
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 330
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Z)V

    .line 332
    :cond_172
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "enableHandler"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v2, v9, v4, v5}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-eqz p1, :cond_18a

    move v7, v3

    .line 335
    :cond_18a
    const-string p1, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v0, "setLogMode"

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v0, v9, v2, v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19f
    .catchall {:try_start_d5 .. :try_end_19f} :catchall_1a2

    .line 337
    monitor-exit p0

    return-void

    .line 341
    :cond_1a1
    goto :goto_1a3

    .line 339
    :catchall_1a2
    move-exception p1

    .line 343
    :cond_1a3
    :goto_1a3
    :try_start_1a3
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 344
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_1a7
    .catchall {:try_start_1a3 .. :try_end_1a7} :catchall_1a9

    .line 345
    monitor-exit p0

    return-void

    .line 287
    :catchall_1a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;)Z
    .registers 5

    .line 742
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-nez v0, :cond_a

    goto :goto_1e

    .line 746
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeInfo(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_d} :catch_1a
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 747
    const/4 p1, 0x1

    return p1

    .line 751
    :catchall_f
    move-exception p1

    .line 752
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 753
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 755
    :cond_19
    return v1

    .line 748
    :catch_1a
    move-exception p1

    .line 749
    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    .line 750
    return v1

    .line 743
    :cond_1e
    :goto_1e
    return v1
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;ILjava/lang/String;)Z
    .registers 3

    .line 31
    const/16 p1, 0x3e7

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 6

    .line 432
    nop

    .line 434
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "[Native] Trying to load so: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 435
    if-eqz p1, :cond_12

    .line 436
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_15

    .line 438
    :cond_12
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_23

    .line 440
    :goto_15
    nop

    .line 441
    :try_start_16
    const-string p1, "[Native] Successfully loaded SO: %s"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    .line 445
    goto :goto_38

    .line 442
    :catchall_20
    move-exception p1

    move v2, v0

    goto :goto_25

    :catchall_23
    move-exception p1

    move v2, v1

    .line 443
    :goto_25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 444
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "[Native] Failed to load so: %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v2

    .line 446
    :goto_38
    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized b(Z)V
    .registers 2

    monitor-enter p0

    .line 564
    if-eqz p1, :cond_8

    .line 565
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    monitor-exit p0

    return-void

    .line 567
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    .line 569
    monitor-exit p0

    return-void

    .line 563
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    return-object p0
.end method

.method private declared-synchronized c()V
    .registers 8

    monitor-enter p0

    .line 453
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 454
    const-string v0, "[Native] Native crash report has already unregistered."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_59

    .line 455
    monitor-exit p0

    return-void

    .line 458
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unregist()Ljava/lang/String;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_20

    .line 460
    const-string v0, "[Native] Successfully closed native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 461
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_21

    .line 462
    monitor-exit p0

    return-void

    .line 466
    :cond_20
    goto :goto_29

    .line 464
    :catchall_21
    move-exception v0

    .line 465
    :try_start_22
    const-string v0, "[Native] Failed to close native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_59

    .line 469
    :goto_29
    :try_start_29
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "enableHandler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v0, v2, v3, v5, v4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 472
    const-string v0, "[Native] Successfully closed native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4b

    .line 473
    monitor-exit p0

    return-void

    .line 474
    :catchall_4b
    move-exception v0

    .line 475
    :try_start_4c
    const-string v0, "[Native] Failed to close native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 478
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 479
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_59

    .line 480
    monitor-exit p0

    return-void

    .line 452
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .registers 6

    monitor-enter p0

    .line 582
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq v0, p1, :cond_16

    .line 583
    const-string v0, "user change native %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 584
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 586
    :cond_16
    monitor-exit p0

    return-void

    .line 581
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/b;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->n:Lcom/tencent/bugly/crashreport/crash/b;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v0

    .line 171
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    .registers 15

    const-class p3, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter p3

    .line 163
    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    if-nez v0, :cond_15

    .line 164
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 167
    :cond_15
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit p3

    return-object p0

    .line 162
    :catchall_19
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public static isShouldHandleInJava()Z
    .registers 1

    .line 200
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return v0
.end method

.method public static setShouldHandleInJava(Z)V
    .registers 4

    .line 188
    sput-boolean p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Z

    .line 189
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    if-eqz v0, :cond_18

    .line 190
    const/16 v1, 0x3e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    .line 192
    :cond_18
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 16

    .line 512
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    sub-long/2addr v0, v2

    .line 513
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 514
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 517
    :try_start_22
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 518
    if-eqz v4, :cond_73

    array-length v5, v4

    if-nez v5, :cond_2c

    goto :goto_73

    .line 521
    :cond_2c
    nop

    .line 522
    nop

    .line 523
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_33
    const/4 v10, 0x1

    if-ge v7, v5, :cond_5e

    aget-object v11, v4, v7

    .line 524
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 525
    cmp-long v14, v12, v0

    if-ltz v14, :cond_44

    cmp-long v12, v12, v2

    if-ltz v12, :cond_5b

    .line 526
    :cond_44
    const-string v12, "[Native] Delete record file: %s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v6

    invoke-static {v12, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v8, v8, 0x1

    .line 531
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 532
    add-int/lit8 v9, v9, 0x1

    .line 523
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 535
    :cond_5e
    const-string v0, "[Native] Number of record files overdue: %d, has deleted: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_22 .. :try_end_72} :catchall_74

    .line 539
    return-void

    .line 519
    :cond_73
    :goto_73
    return-void

    .line 537
    :catchall_74
    move-exception v0

    .line 538
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 541
    :cond_78
    return-void
.end method

.method public appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .line 635
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_a

    .line 636
    return v1

    .line 638
    :cond_a
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_f

    .line 639
    return v1

    .line 641
    :cond_f
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    if-nez p3, :cond_16

    goto :goto_5a

    .line 645
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_1f

    .line 646
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 648
    :cond_1f
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "appendNativeLog"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    aput-object p3, v4, v8

    invoke-static {v0, v2, v3, v5, v4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 652
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_49
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_49} :catch_56
    .catchall {:try_start_16 .. :try_end_49} :catchall_4b

    return p1

    :cond_4a
    return v1

    .line 657
    :catchall_4b
    move-exception p1

    .line 658
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_55

    .line 659
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 661
    :cond_55
    return v1

    .line 654
    :catch_56
    move-exception p1

    .line 655
    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 656
    return v1

    .line 642
    :cond_5a
    :goto_5a
    return v1
.end method

.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method public checkUploadRecordCrash()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/proguard/w;

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler$1;-><init>(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method public filterSigabrtSysLog()Z
    .registers 3

    .line 765
    const/16 v0, 0x3e6

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDumpFilePath()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 175
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogFromNative()Ljava/lang/String;
    .registers 4

    .line 671
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_a

    .line 672
    return-object v1

    .line 674
    :cond_a
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_f

    .line 675
    return-object v1

    .line 678
    :cond_f
    :try_start_f
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_18

    .line 679
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getNativeLog()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 681
    :cond_18
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "getNativeLog"

    invoke-static {v0, v2, v1, v1, v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_22} :catch_2e
    .catchall {:try_start_f .. :try_end_22} :catchall_23

    .line 684
    return-object v0

    .line 689
    :catchall_23
    move-exception v0

    .line 690
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 691
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 693
    :cond_2d
    return-object v1

    .line 686
    :catch_2e
    move-exception v0

    .line 687
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 688
    return-object v1
.end method

.method public getNativeExceptionHandler()Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method protected native getNativeLog()Ljava/lang/String;
.end method

.method public declared-synchronized isUserOpened()Z
    .registers 2

    monitor-enter p0

    .line 575
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 575
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 6

    monitor-enter p0

    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    :try_start_5
    iget-boolean v2, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v2, v3, :cond_1a

    .line 614
    const-string v2, "server native changed to %b"

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 617
    :cond_1a
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz p1, :cond_2c

    iget-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eqz p1, :cond_2c

    move p1, v0

    goto :goto_2d

    :cond_2c
    move p1, v1

    .line 619
    :goto_2d
    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq p1, v2, :cond_41

    .line 620
    const-string v2, "native changed to %b"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 621
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_43

    .line 624
    :cond_41
    monitor-exit p0

    return-void

    .line 612
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 705
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_a

    .line 706
    return v1

    .line 708
    :cond_a
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v0, :cond_f

    .line 709
    return v1

    .line 711
    :cond_f
    if-eqz p1, :cond_51

    if-nez p2, :cond_14

    goto :goto_51

    .line 715
    :cond_14
    :try_start_14
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_1d

    .line 716
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 718
    :cond_1d
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "putNativeKeyValue"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    invoke-static {v0, v2, v3, v5, v4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 721
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_40
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_40} :catch_4d
    .catchall {:try_start_14 .. :try_end_40} :catchall_42

    return p1

    :cond_41
    return v1

    .line 726
    :catchall_42
    move-exception p1

    .line 727
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_4c

    .line 728
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 730
    :cond_4c
    return v1

    .line 723
    :catch_4d
    move-exception p1

    .line 724
    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 725
    return v1

    .line 712
    :cond_51
    :goto_51
    return v1
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native regist(Ljava/lang/String;ZI)Ljava/lang/String;
.end method

.method public removeEmptyNativeRecordFiles()V
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/jni/b;->c(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized setDumpFilePath(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 179
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 180
    monitor-exit p0

    return-void

    .line 178
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNativeAppChannel(Ljava/lang/String;)Z
    .registers 3

    .line 785
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeAppPackage(Ljava/lang/String;)Z
    .registers 3

    .line 795
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeAppVersion(Ljava/lang/String;)Z
    .registers 3

    .line 775
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected native setNativeInfo(ILjava/lang/String;)V
.end method

.method public setNativeIsAppForeground(Z)Z
    .registers 3

    .line 815
    if-eqz p1, :cond_5

    const-string p1, "true"

    goto :goto_7

    :cond_5
    const-string p1, "false"

    .line 816
    :goto_7
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeLaunchTime(J)Z
    .registers 4

    .line 827
    const/16 v0, 0xf

    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_b

    return p1

    .line 828
    :catch_b
    move-exception p1

    .line 829
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 830
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 832
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public setNativeUserId(Ljava/lang/String;)Z
    .registers 3

    .line 805
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setUserOpened(Z)V
    .registers 6

    monitor-enter p0

    .line 593
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Z)V

    .line 595
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->isUserOpened()Z

    move-result p1

    .line 596
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    .line 597
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 598
    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz p1, :cond_1c

    move p1, v1

    goto :goto_1d

    :cond_1c
    move p1, v2

    .line 600
    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq p1, v0, :cond_31

    .line 601
    const-string v0, "native changed to %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 602
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 605
    :cond_31
    monitor-exit p0

    return-void

    .line 592
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startNativeMonitor()V
    .registers 4

    monitor-enter p0

    .line 351
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_6e

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_a

    goto :goto_6e

    .line 356
    :cond_a
    const-string v0, "Bugly"

    .line 357
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 359
    :goto_19
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 368
    if-nez v1, :cond_26

    .line 369
    nop

    .line 370
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_27

    .line 368
    :cond_26
    move-object v0, v2

    .line 374
    :goto_27
    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 376
    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_75

    if-nez v0, :cond_35

    .line 377
    monitor-exit p0

    return-void

    .line 380
    :cond_35
    :try_start_35
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Z)V

    .line 381
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_6c

    .line 382
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    .line 383
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    .line 384
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    .line 385
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    .line 386
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeIsAppForeground(Z)Z

    .line 387
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeLaunchTime(J)Z
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_75

    .line 389
    :cond_6c
    monitor-exit p0

    return-void

    .line 352
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Z)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_75

    .line 353
    monitor-exit p0

    return-void

    .line 350
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native testCrash()V
.end method

.method public testNativeCrash()V
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_d

    .line 487
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] Bugly SO file has not been load."

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 488
    return-void

    .line 491
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testCrash()V

    .line 492
    return-void
.end method

.method public testNativeCrash(ZZZ)V
    .registers 5

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11

    invoke-direct {p0, p2, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    invoke-direct {p0, p2, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    .line 501
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V

    .line 502
    return-void
.end method

.method protected native unregist()Ljava/lang/String;
.end method
