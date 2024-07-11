.class public Lcom/tencent/bugly/crashreport/biz/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/biz/a;

.field private static b:Z

.field private static c:I

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:I

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const/16 v0, 0xa

    sput v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 44
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    .line 45
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    .line 61
    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 67
    sput-object v0, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 5

    .line 264
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_b

    .line 265
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    .line 267
    :cond_b
    return-void
.end method

.method public static a(J)V
    .registers 4

    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 224
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 226
    :cond_10
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    .line 227
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 482
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 485
    :cond_7
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    :cond_1d
    if-eqz v0, :cond_31

    :try_start_1f
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p0, :cond_31

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    :cond_31
    :goto_31
    const/4 p0, 0x0

    sput-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    .line 487
    return-void

    .line 483
    :cond_35
    :goto_35
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 6

    .line 186
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_5

    .line 187
    return-void

    .line 190
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    .line 192
    new-instance v0, Lcom/tencent/bugly/crashreport/biz/a;

    sget-boolean v1, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/crashreport/biz/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    .line 196
    nop

    .line 198
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_29

    .line 199
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getUserInfoActivity()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    .line 200
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v2

    goto :goto_2a

    .line 198
    :cond_29
    move-wide v2, v0

    .line 203
    :goto_2a
    cmp-long v0, v2, v0

    if-gtz v0, :cond_32

    .line 204
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void

    .line 206
    :cond_32
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 215
    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .registers 6

    .line 235
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 236
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 238
    :cond_14
    if-nez p0, :cond_17

    .line 239
    return-void

    .line 241
    :cond_17
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_23

    .line 242
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 244
    :cond_23
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    if-lez p1, :cond_2b

    .line 245
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I

    sput p1, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 247
    :cond_2b
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_35

    .line 248
    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    .line 250
    :cond_35
    return-void
.end method

.method static synthetic b(J)J
    .registers 2

    .line 27
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic b()Ljava/lang/Class;
    .registers 1

    .line 27
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method static synthetic c()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .registers 2

    .line 27
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 16

    .line 147
    nop

    .line 148
    nop

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    .line 150
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->recordUserInfoOnceADay()Z

    move-result v2

    .line 151
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->isEnableUserInfo()Z

    move-result p1

    goto :goto_11

    .line 149
    :cond_f
    move v2, v0

    move p1, v1

    .line 154
    :goto_11
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_6c

    .line 155
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {v5, v2}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_67

    move v5, v0

    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_67

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    iget v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-ne v7, v1, :cond_64

    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_67

    iget-wide v9, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    cmp-long v7, v9, v7

    if-ltz v7, :cond_64

    iget-wide v5, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_62

    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v2

    if-eqz v2, :cond_62

    new-instance v5, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v5, p1}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_62
    move p1, v0

    goto :goto_68

    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_67
    move p1, v1

    :goto_68
    if-nez p1, :cond_6b

    .line 157
    return-void

    .line 160
    :cond_6b
    move p1, v0

    .line 163
    :cond_6c
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_b2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v8, v0

    move v10, v8

    move-object v9, v5

    :goto_7f
    if-ge v8, v7, :cond_a3

    aget-object v11, v6, v8

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "onCreate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    :cond_93
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.app.Activity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a0

    move v10, v1

    :cond_a0
    add-int/lit8 v8, v8, 0x1

    goto :goto_7f

    :cond_a3
    if-eqz v9, :cond_ae

    if-eqz v10, :cond_ab

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    goto :goto_b0

    :cond_ab
    const-string v9, "background"

    goto :goto_b0

    :cond_ae
    const-string v9, "unknown"

    :goto_b0
    iput-object v9, v2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 165
    :cond_b2
    if-eqz p1, :cond_e6

    .line 166
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_e6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_c9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/Application;

    :cond_c9
    if-eqz v5, :cond_e6

    :try_start_cb
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p0, :cond_d6

    new-instance p0, Lcom/tencent/bugly/crashreport/biz/b$2;

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/biz/b$2;-><init>()V

    sput-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_d6
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v5, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_db} :catch_dc

    goto :goto_e6

    :catch_dc
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_e6

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :cond_e6
    :goto_e6
    sget-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    if-eqz p0, :cond_112

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "[session] launch app, new start"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 173
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/biz/a;->a()V

    .line 175
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const-wide/32 v0, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/a$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/bugly/crashreport/biz/a$c;-><init>(Lcom/tencent/bugly/crashreport/biz/a;J)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_112
    return-void
.end method

.method static synthetic d()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic e()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic f()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic g()I
    .registers 2

    .line 27
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .registers 1

    .line 27
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic i()I
    .registers 1

    .line 27
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic j()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    return v0
.end method

.method static synthetic k()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic l()J
    .registers 2

    .line 27
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    return-wide v0
.end method
