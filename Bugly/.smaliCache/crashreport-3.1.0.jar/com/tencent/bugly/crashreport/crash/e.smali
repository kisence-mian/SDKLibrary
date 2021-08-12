.class public final Lcom/tencent/bugly/crashreport/crash/e;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/crashreport/common/info/a;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 49
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 51
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 52
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 53
    return-void
.end method

.method private static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 8

    .line 401
    if-nez p0, :cond_4

    .line 402
    const/4 p0, 0x0

    return-object p0

    .line 405
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 408
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_16
    if-ge v3, v2, :cond_4f

    aget-object v4, p0, v3

    .line 409
    if-lez p1, :cond_3f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, p1, :cond_3f

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "\n[Stack over limit size :"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " , has been cutted !]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 415
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_50

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 420
    :cond_4f
    goto :goto_5f

    .line 418
    :catchall_50
    move-exception p0

    .line 419
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "gen stack error %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 421
    :goto_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .registers 8

    .line 366
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 367
    return v0

    .line 369
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 370
    nop

    .line 371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 372
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_36

    aget-object v5, v1, v4

    .line 373
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 374
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const-string v6, "uncaughtException"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 376
    return v3

    .line 372
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 379
    :cond_36
    return v0
.end method

.method private static a(Ljava/lang/Thread;)Z
    .registers 4

    .line 265
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    if-nez v1, :cond_14

    goto :goto_17

    .line 272
    :cond_14
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    .line 269
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/crashreport/crash/e;->h:Ljava/lang/String;

    .line 270
    const/4 p0, 0x0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    return p0

    .line 273
    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 21

    .line 140
    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_13

    .line 141
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "We can do nothing with a null throwable."

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    return-object v4

    .line 145
    :cond_13
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/crash/c;->k()Z

    move-result v6

    .line 146
    const-string v7, ""

    if-eqz v6, :cond_24

    if-eqz p3, :cond_24

    const-string v8, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_25

    :cond_24
    move-object v8, v7

    .line 149
    :goto_25
    if-eqz v6, :cond_30

    if-eqz p3, :cond_30

    .line 150
    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-static {v9, v6}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 153
    :cond_30
    new-instance v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v6}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    .line 155
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 156
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 157
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 158
    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v9}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 159
    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v9}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 160
    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v9}, Lcom/tencent/bugly/crashreport/common/info/a;->q()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 161
    iget-object v9, v1, Lcom/tencent/bugly/crashreport/crash/e;->a:Landroid/content/Context;

    sget v10, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v9, v10, v4}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->a()[B

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 164
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    if-nez v10, :cond_78

    move v10, v5

    goto :goto_7b

    :cond_78
    iget-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    array-length v10, v10

    :goto_7b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "user log size:%d"

    invoke-static {v10, v9}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    const/4 v9, 0x2

    if-eqz p3, :cond_8b

    move v10, v5

    goto :goto_8c

    :cond_8b
    move v10, v9

    :goto_8c
    iput v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 167
    iget-object v10, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v10}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 168
    iget-object v10, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v10, v10, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 169
    iget-object v10, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v10}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 170
    iget-object v10, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v10}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 173
    const/16 v11, 0x3e8

    invoke-static {v0, v11}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v12

    .line 174
    if-nez v12, :cond_bd

    .line 175
    move-object v12, v7

    .line 178
    :cond_bd
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    if-eqz v13, :cond_d2

    move v13, v4

    goto :goto_d3

    :cond_d2
    move v13, v5

    :goto_d3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v9, v4

    const-string v13, "stack frame :%d, has cause %b"

    invoke-static {v13, v9}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 180
    nop

    .line 181
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_f1

    .line 182
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_f2

    .line 181
    :cond_f1
    move-object v9, v7

    .line 185
    :goto_f2
    move-object v13, v0

    .line 187
    :goto_f3
    if-eqz v13, :cond_100

    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    if-eqz v14, :cond_100

    .line 188
    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    goto :goto_f3

    .line 190
    :cond_100
    if-eqz v13, :cond_175

    if-eq v13, v0, :cond_175

    .line 192
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 193
    invoke-static {v13, v11}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 194
    iget-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v0, :cond_11a

    .line 195
    iput-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 197
    :cond_11a
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_12d

    .line 198
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 201
    :cond_12d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v7, "\n......"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v7, "\nCaused by:\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    sget v7, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v13, v7}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 211
    goto :goto_19a

    .line 213
    :cond_175
    iput-object v10, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 215
    iget-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v8, :cond_190

    .line 216
    iput-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 218
    :cond_190
    iput-object v9, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 219
    sget v7, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v0, v7}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v7

    .line 220
    iput-object v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 223
    :goto_19a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 225
    iget-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 227
    :try_start_1ac
    sget v0, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 229
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 231
    iget-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v8, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 233
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 234
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->J()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 235
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v7, v0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v7, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 236
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result v0

    iput-boolean v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 239
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result v0

    iput v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 240
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->I()I

    move-result v0

    iput v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 241
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 242
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;
    :try_end_22e
    .catchall {:try_start_1ac .. :try_end_22e} :catchall_22f

    .line 246
    goto :goto_23d

    .line 244
    :catchall_22f
    move-exception v0

    .line 245
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    const-string v0, "handle crash error %s"

    invoke-static {v0, v7}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 247
    :goto_23d
    if-eqz p3, :cond_245

    .line 248
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, v6}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_26a

    .line 250
    :cond_245
    if-eqz v2, :cond_24f

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24f

    move v0, v4

    goto :goto_250

    :cond_24f
    move v0, v5

    .line 251
    :goto_250
    if-eqz v3, :cond_256

    array-length v7, v3

    if-lez v7, :cond_256

    move v5, v4

    .line 252
    :cond_256
    if-eqz v0, :cond_266

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 254
    iget-object v0, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v4, "UserData"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_266
    if-eqz v5, :cond_26a

    .line 257
    iput-object v3, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    .line 261
    :cond_26a
    :goto_26a
    return-object v6
.end method

.method private static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 4

    .line 428
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    .line 429
    const-string p0, ""

    return-object p0

    .line 432
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1a

    .line 433
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 435
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n[Message over limit size:1000"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", has been cutted!]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 7

    monitor-enter p0

    .line 59
    :try_start_1
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_18

    .line 60
    const-string v0, "java crash handler over %d, no need set."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_80

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_18
    :try_start_18
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 65
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_69

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_80

    if-eqz v1, :cond_38

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_38
    :try_start_38
    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 73
    const-string v1, "backup system java handler: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_69

    .line 77
    :cond_5a
    const-string v1, "backup java handler: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 86
    :cond_69
    :goto_69
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 87
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    .line 88
    const-string v0, "registered java monitor: %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_38 .. :try_end_7e} :catchall_80

    .line 89
    monitor-exit p0

    return-void

    .line 58
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 6

    monitor-enter p0

    .line 387
    if-eqz p1, :cond_2a

    :try_start_3
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    if-eq v0, v1, :cond_2a

    .line 388
    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 389
    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz p1, :cond_23

    .line 390
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    monitor-exit p0

    return-void

    .line 392
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2a

    .line 386
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1

    .line 395
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .registers 28

    .line 286
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "sys default last handle end!"

    const-string v6, "sys default last handle start!"

    const-string v7, "system handle end!"

    const-string v8, "system handle start!"

    const-string v9, "crashreport last handle end!"

    const-string v10, "crashreport last handle start!"

    const-string v11, "current process die"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_60

    .line 287
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v0, v12

    const-string v14, "Java Crash Happen cause by %s(%d)"

    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 289
    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "this class has handled this exception"

    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 291
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_50

    .line 292
    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "call system handler"

    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 293
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_67

    .line 295
    :cond_50
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_67

    .line 299
    :cond_60
    new-array v0, v13, [Ljava/lang/Object;

    const-string v14, "Java Catch Happen"

    invoke-static {v14, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 302
    :cond_67
    :goto_67
    :try_start_67
    iget-boolean v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    if-nez v0, :cond_bc

    .line 303
    const-string v0, "Java crash handler is disable. Just return."

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v0, v14}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_228

    .line 340
    if-eqz v4, :cond_bb

    .line 341
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_8e

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 342
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_8e
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a2

    .line 346
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_a2
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_bb
    return-void

    .line 307
    :cond_bc
    :try_start_bc
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 308
    const-string v0, "no remote but still store!"

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v0, v14}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 311
    :cond_cb
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 312
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_228

    const-string v14, "JAVA_CRASH"

    const-string v15, "JAVA_CATCH"

    if-nez v0, :cond_151

    :try_start_d9
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 313
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 315
    if-eqz v4, :cond_ed

    move-object/from16 v16, v14

    goto :goto_ef

    :cond_ed
    move-object/from16 v16, v15

    :goto_ef
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v21}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_106
    .catchall {:try_start_d9 .. :try_end_106} :catchall_228

    .line 340
    if-eqz v4, :cond_150

    .line 341
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_122

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 342
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_122
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_136

    .line 346
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_136
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_150
    return-void

    .line 321
    :cond_151
    :try_start_151
    invoke-direct/range {p0 .. p5}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 322
    if-nez v0, :cond_1a9

    .line 323
    const-string v0, "pkg crash datas fail!"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_151 .. :try_end_15e} :catchall_228

    .line 340
    if-eqz v4, :cond_1a8

    .line 341
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_17a

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 342
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_17a
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_18e

    .line 346
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_18e
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1a8
    return-void

    .line 327
    :cond_1a9
    if-eqz v4, :cond_1ae

    move-object/from16 v16, v14

    goto :goto_1b0

    :cond_1ae
    move-object/from16 v16, v15

    :goto_1b0
    :try_start_1b0
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v12, v12, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v12

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v21}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 329
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v12

    if-nez v12, :cond_1d6

    .line 330
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v0, v14, v15, v4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    .line 332
    :cond_1d6
    if-eqz v4, :cond_1dd

    .line 333
    iget-object v12, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v12, v0}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_1dd
    .catchall {:try_start_1b0 .. :try_end_1dd} :catchall_228

    .line 340
    :cond_1dd
    if-eqz v4, :cond_27d

    .line 341
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1f9

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 342
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_1f9
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_20d

    .line 346
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_20d
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 335
    :catchall_228
    move-exception v0

    .line 336
    :try_start_229
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v12

    if-nez v12, :cond_232

    .line 337
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_232
    .catchall {:try_start_229 .. :try_end_232} :catchall_27e

    .line 340
    :cond_232
    if-eqz v4, :cond_27d

    .line 341
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_24e

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 342
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 345
    :cond_24e
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_262

    .line 346
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v8, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 350
    :cond_262
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static {v9, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 356
    :cond_27d
    return-void

    .line 340
    :catchall_27e
    move-exception v0

    if-eqz v4, :cond_2ca

    .line 341
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_29c

    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v4

    if-nez v4, :cond_28c

    goto :goto_29c

    .line 342
    :cond_28c
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v6, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 344
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v5, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2ca

    .line 345
    :cond_29c
    :goto_29c
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_2b0

    .line 346
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v8, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v7, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2ca

    .line 350
    :cond_2b0
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v10, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v11, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 352
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v9, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2ca
    :goto_2ca
    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 6

    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 96
    const-string v1, "close java monitor!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugly"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 99
    const-string v1, "Java monitor to unregister: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 101
    iget v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->j:I
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_39

    .line 103
    :cond_37
    monitor-exit p0

    return-void

    .line 94
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 10

    .line 360
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    .line 362
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0

    throw p1
.end method
