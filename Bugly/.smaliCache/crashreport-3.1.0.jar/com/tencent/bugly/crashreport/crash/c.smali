.class public final Lcom/tencent/bugly/crashreport/crash/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:I

.field public static d:Z

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:I

.field public static l:Z

.field public static m:Z

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field private static r:Lcom/tencent/bugly/crashreport/crash/c;


# instance fields
.field public final p:Lcom/tencent/bugly/crashreport/crash/b;

.field private final q:Landroid/content/Context;

.field private final s:Lcom/tencent/bugly/crashreport/crash/e;

.field private final t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private u:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private v:Lcom/tencent/bugly/proguard/w;

.field private final w:Lcom/tencent/bugly/crashreport/crash/anr/b;

.field private x:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    .line 38
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->b:Z

    .line 49
    const/4 v1, 0x2

    sput v1, Lcom/tencent/bugly/crashreport/crash/c;->c:I

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/c;->d:Z

    .line 51
    const/16 v2, 0x5000

    sput v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    .line 52
    sput v2, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    .line 53
    const-wide/32 v2, 0x240c8400

    sput-wide v2, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    .line 54
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->h:Ljava/lang/String;

    .line 55
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->i:Z

    .line 56
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->j:Ljava/lang/String;

    .line 57
    const/16 v3, 0x1388

    sput v3, Lcom/tencent/bugly/crashreport/crash/c;->k:I

    .line 58
    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/c;->l:Z

    .line 59
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Z

    .line 67
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    .line 69
    sput-object v2, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/w;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;Ljava/lang/String;)V
    .registers 20

    .line 97
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sput p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    .line 99
    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    .line 100
    iput-object v9, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 102
    move-object v10, p3

    iput-object v10, v0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/proguard/w;

    .line 103
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v4

    .line 106
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v5

    .line 107
    new-instance v11, Lcom/tencent/bugly/crashreport/crash/b;

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v1, v11

    move v2, p1

    move-object v3, v9

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/bugly/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/u;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;)V

    iput-object v11, v0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/b;

    .line 109
    invoke-static {v9}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v8

    .line 110
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/e;

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v1, v9, v11, v2, v8}, Lcom/tencent/bugly/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    .line 111
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v1, v9

    move-object v2, v8

    move-object v3, v11

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 113
    iput-object v1, v8, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    .line 114
    new-instance v7, Lcom/tencent/bugly/crashreport/crash/anr/b;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/c;->u:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v1, v7

    move-object v2, v9

    move-object v4, v8

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/w;Lcom/tencent/bugly/crashreport/crash/b;)V

    iput-object v7, v0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    .line 116
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/crash/c;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/c;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/crashreport/crash/c;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/c;
    .registers 14

    const-class p0, Lcom/tencent/bugly/crashreport/crash/c;

    monitor-enter p0

    .line 132
    :try_start_3
    sget-object p4, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/crashreport/crash/c;

    if-nez p4, :cond_1a

    .line 133
    new-instance p4, Lcom/tencent/bugly/crashreport/crash/c;

    const/16 v1, 0x3ec

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/w;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;Ljava/lang/String;)V

    sput-object p4, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/crashreport/crash/c;

    .line 136
    :cond_1a
    sget-object p1, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/crashreport/crash/c;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object p1

    .line 131
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/c;->q:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 338
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 368
    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/e;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 165
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/c$2;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/crashreport/crash/c;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 330
    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .registers 15

    .line 306
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/c;->v:Lcom/tencent/bugly/proguard/w;

    new-instance p4, Lcom/tencent/bugly/crashreport/crash/c$1;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {p3, p4}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public final declared-synchronized a(ZZZ)V
    .registers 5

    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash(ZZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .registers 7

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 173
    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 177
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/p;->a(I)Ljava/util/List;

    move-result-object v1

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    if-eqz v1, :cond_55

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/r;

    .line 183
    iget-object v5, v4, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 185
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_46
    goto :goto_29

    .line 189
    :cond_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 190
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/util/List;)V

    .line 192
    :cond_54
    return v2

    .line 195
    :cond_55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 196
    return v0
.end method

.method public final declared-synchronized c()V
    .registers 4

    monitor-enter p0

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V

    .line 204
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v0, v2, :cond_19

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->c()Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_20

    .line 208
    monitor-exit p0

    return-void

    .line 202
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 4

    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V

    .line 215
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_19

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d()Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_20

    .line 219
    monitor-exit p0

    return-void

    .line 213
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V

    .line 233
    return-void
.end method

.method public final f()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 240
    return-void
.end method

.method public final g()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 247
    return-void
.end method

.method public final h()V
    .registers 3

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_d

    .line 254
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V

    return-void

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->c()Z

    .line 259
    return-void
.end method

.method public final i()V
    .registers 3

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_d

    .line 266
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V

    return-void

    .line 268
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d()Z

    .line 270
    return-void
.end method

.method public final declared-synchronized j()V
    .registers 6

    monitor-enter p0

    .line 291
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_2d

    :try_start_9
    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/z;->b(J)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    move v1, v2

    goto :goto_3

    :catchall_1e
    move-exception v0

    :try_start_1f
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    .line 292
    :cond_28
    monitor-exit p0

    return-void

    .line 290
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_2d
    monitor-exit p0

    return-void
.end method

.method public final k()Z
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->w:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->checkUploadRecordCrash()V

    .line 398
    return-void
.end method

.method public final m()V
    .registers 3

    .line 405
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/c;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 406
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->removeEmptyNativeRecordFiles()V

    .line 408
    :cond_17
    return-void
.end method
