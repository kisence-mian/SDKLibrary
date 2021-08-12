.class public final Lcom/tencent/bugly/crashreport/crash/d;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/crashreport/crash/d;


# instance fields
.field private b:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private c:Lcom/tencent/bugly/crashreport/common/info/a;

.field private d:Lcom/tencent/bugly/crashreport/crash/b;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/crashreport/crash/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    .line 36
    if-nez v0, :cond_a

    .line 37
    return-void

    .line 39
    :cond_a
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 40
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 41
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/b;

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/d;->d:Lcom/tencent/bugly/crashreport/crash/b;

    .line 42
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/d;->e:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/d$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/crash/d$1;-><init>(Lcom/tencent/bugly/crashreport/crash/d;)V

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method static synthetic a()Lcom/tencent/bugly/crashreport/crash/d;
    .registers 1

    .line 22
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/crashreport/crash/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/crash/d;
    .registers 2

    .line 60
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/crashreport/crash/d;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/d;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/crash/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/crashreport/crash/d;

    .line 63
    :cond_b
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/crashreport/crash/d;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/d;)V
    .registers 5

    .line 22
    const-string v0, ""

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[ExtraCrashManager] Trying to notify Bugly agents."

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_a
    const-string v2, "com.tencent.bugly.agent.GameAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.tencent.bugly"

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_34
    const-string p0, "sdkPackageName"

    const/4 v0, 0x0

    invoke-static {v2, p0, v3, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "[ExtraCrashManager] Bugly game agent has been notified."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_42

    return-void

    :catchall_42
    move-exception p0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "[ExtraCrashManager] no game agent"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 22

    .line 22
    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "[ExtraCrashManager] Successfully handled."

    if-nez p1, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    goto :goto_16

    :cond_14
    move-object/from16 v7, p1

    :goto_16
    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_262

    :pswitch_1b
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "[ExtraCrashManager] Unknown extra crash type: %d"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :pswitch_29
    const-string v10, "H5"

    goto :goto_31

    :pswitch_2c
    const-string v10, "Cocos"

    goto :goto_31

    :pswitch_2f
    const-string v10, "Unity"

    :goto_31
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v10, v11, v9

    const-string v12, "[ExtraCrashManager] %s Crash Happen"

    invoke-static {v12, v11}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_3a
    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v11

    if-nez v11, :cond_49

    const-string v11, "[ExtraCrashManager] There is no remote strategy, but still store it."

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_49
    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v11

    iget-boolean v12, v11, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_24a

    const-string v13, "\n"

    if-nez v12, :cond_a2

    :try_start_55
    iget-object v12, v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v12}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v12

    if-eqz v12, :cond_a2

    const-string v1, "[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object p0, v10

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v5

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_9c
    .catchall {:try_start_55 .. :try_end_9c} :catchall_24a

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_a2
    const-string v12, "[ExtraCrashManager] %s report is disabled."

    packed-switch v1, :pswitch_data_270

    :cond_a7
    :pswitch_a7
    goto :goto_ca

    :pswitch_a8
    :try_start_a8
    iget-boolean v11, v11, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    if-nez v11, :cond_a7

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v10, v0, v9

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_a8 .. :try_end_b3} :catchall_24a

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :pswitch_b9
    :try_start_b9
    iget-boolean v11, v11, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    if-nez v11, :cond_a7

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v10, v0, v9

    invoke-static {v12, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c4
    .catchall {:try_start_b9 .. :try_end_c4} :catchall_24a

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :goto_ca
    const/16 v8, 0x8

    if-ne v1, v8, :cond_cf

    const/4 v1, 0x5

    :cond_cf
    :try_start_cf
    new-instance v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v8}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->q()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/d;->e:Landroid/content/Context;

    sget v12, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;
    :try_end_147
    .catchall {:try_start_cf .. :try_end_147} :catchall_24a

    const-string v1, ""

    if-eqz v4, :cond_156

    :try_start_14b
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    if-lez v12, :cond_154

    aget-object v1, v11, v9

    :cond_154
    move-object v11, v4

    goto :goto_157

    :cond_156
    move-object v11, v1

    :goto_157
    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    sget v1, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v1, v9}, Lcom/tencent/bugly/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ")"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v11, v1, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v11, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result v1

    iput-boolean v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result v1

    iput v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->I()I

    move-result v1

    iput v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->d:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1, v8}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->a()[B

    move-result-object v1

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-nez v1, :cond_1f6

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    :cond_1f6
    if-eqz v5, :cond_1fd

    iget-object v1, v8, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1fd
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p1, v10

    move-object/from16 p2, v1

    move-object/from16 p3, v5

    move-object/from16 p4, v7

    move-object/from16 p5, v2

    move-object/from16 p6, v8

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/d;->d:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1, v8}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result v1

    if-nez v1, :cond_244

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/d;->d:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v8, v1, v2, v9}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_244
    .catchall {:try_start_14b .. :try_end_244} :catchall_24a

    :cond_244
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_24a
    move-exception v0

    :try_start_24b
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_254

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_254
    .catchall {:try_start_24b .. :try_end_254} :catchall_25a

    :cond_254
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_25a
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0

    nop

    :pswitch_data_262
    .packed-switch 0x4
        :pswitch_2f
        :pswitch_2c
        :pswitch_2c
        :pswitch_1b
        :pswitch_29
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x4
        :pswitch_a7
        :pswitch_b9
        :pswitch_b9
        :pswitch_a7
        :pswitch_a8
    .end packed-switch
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v8, Lcom/tencent/bugly/crashreport/crash/d$2;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
