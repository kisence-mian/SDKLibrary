.class Lcom/umeng/analytics/game/b;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/umeng/common/ISysListener;


# static fields
.field private static final B:Ljava/lang/String; = "com.umeng.analytics.MobclickAgent"

.field private static C:Z = false

.field private static D:Ljava/lang/reflect/Method; = null

.field public static a:Z = false

.field public static final b:Ljava/lang/String; = "userlevel"


# instance fields
.field private A:Landroid/content/Context;

.field private c:Lcom/umeng/analytics/game/a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    .line 60
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/analytics/game/b;->C:Z

    .line 62
    const/4 v2, 0x0

    sput-object v2, Lcom/umeng/analytics/game/b;->D:Ljava/lang/reflect/Method;

    .line 68
    :try_start_9
    const-string v2, "com.umeng.analytics.MobclickAgent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_4a

    .line 70
    const-string v3, "setSysListener"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Lcom/umeng/common/ISysListener;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 71
    const/4 v4, 0x2

    if-nez v3, :cond_2a

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u6ce8\u610f: \u6b64\u53cb\u76df\u6e38\u620f\u7edf\u8ba1SDK\u5305\u5fc5\u987b\u914d\u5408v3.0.0\u6216\u8005\u66f4\u9ad8\u7248\u672c\u53cb\u76df\u57fa\u7840\u7ec4\u4ef6\u5e93\u4f7f\u7528!"

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_4a

    .line 74
    :cond_2a
    sput-boolean v0, Lcom/umeng/analytics/game/b;->C:Z

    .line 75
    const-string v3, "onGKVEvent"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v5, v0

    const-class v0, Ljava/util/HashMap;

    aput-object v0, v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/game/b;->D:Ljava/lang/reflect/Method;

    .line 76
    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u6e38\u620fSDK: \u68c0\u6d4b\u5230\u53ef\u7528\u57fa\u7840\u7ec4\u4ef6\u5e93."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_4b

    .line 80
    :cond_4a
    :goto_4a
    goto :goto_4c

    .line 79
    :catchall_4b
    move-exception v0

    .line 81
    :goto_4c
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/b;->d:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/game/b;->e:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/umeng/analytics/game/b;->f:I

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/game/b;->g:I

    .line 30
    iput v0, p0, Lcom/umeng/analytics/game/b;->h:I

    .line 35
    const-string v1, "level"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->i:Ljava/lang/String;

    .line 36
    const-string v2, "pay"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->j:Ljava/lang/String;

    .line 37
    const-string v2, "buy"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->k:Ljava/lang/String;

    .line 38
    const-string v2, "use"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->l:Ljava/lang/String;

    .line 39
    const-string v2, "bonus"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->m:Ljava/lang/String;

    .line 41
    const-string v2, "item"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->n:Ljava/lang/String;

    .line 42
    const-string v2, "cash"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->o:Ljava/lang/String;

    .line 43
    const-string v2, "coin"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->p:Ljava/lang/String;

    .line 44
    const-string v2, "source"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->q:Ljava/lang/String;

    .line 45
    const-string v2, "amount"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->r:Ljava/lang/String;

    .line 46
    const-string v2, "user_level"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->s:Ljava/lang/String;

    .line 47
    const-string v2, "bonus_source"

    iput-object v2, p0, Lcom/umeng/analytics/game/b;->t:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/umeng/analytics/game/b;->u:Ljava/lang/String;

    .line 50
    const-string v1, "status"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->v:Ljava/lang/String;

    .line 51
    const-string v1, "duration"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->w:Ljava/lang/String;

    .line 53
    const-string v1, "curtype"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->x:Ljava/lang/String;

    .line 54
    const-string v1, "orderid"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->y:Ljava/lang/String;

    .line 56
    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v1, p0, Lcom/umeng/analytics/game/b;->z:Ljava/lang/String;

    .line 124
    sput-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    .line 125
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    sget-boolean v0, Lcom/umeng/analytics/game/b;->C:Z

    if-eqz v0, :cond_1f

    .line 93
    :try_start_4
    sget-object v0, Lcom/umeng/analytics/game/b;->D:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    sget-object v0, Lcom/umeng/analytics/game/b;->D:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v1

    const/4 p0, 0x2

    aput-object p2, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    .line 98
    :cond_1d
    goto :goto_1f

    .line 97
    :catchall_1e
    move-exception p0

    .line 100
    :cond_1f
    :goto_1f
    return-void
.end method

.method private a(Lcom/umeng/common/ISysListener;)V
    .registers 7

    .line 108
    sget-boolean p1, Lcom/umeng/analytics/game/b;->C:Z

    if-eqz p1, :cond_24

    .line 110
    :try_start_4
    const-string p1, "com.umeng.analytics.MobclickAgent"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 111
    const-string v0, "setSysListener"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/umeng/common/ISysListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_22

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    .line 118
    :cond_22
    goto :goto_24

    .line 116
    :catchall_23
    move-exception p1

    .line 120
    :cond_24
    :goto_24
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 194
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 195
    return-void

    .line 197
    :cond_a
    nop

    .line 198
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 199
    const-string p1, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->d(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_66

    .line 205
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->e()J

    move-result-wide v0

    .line 206
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_35

    .line 207
    const-string p1, "level duration is 0"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 208
    return-void

    .line 211
    :cond_35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v3, "level"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "status"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_60
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 219
    goto :goto_72

    .line 220
    :cond_66
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "finishLevel(or failLevel) called before startLevel"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    .line 222
    :goto_72
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 393
    const-string v0, "App resume from background"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 396
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 397
    return-void

    .line 399
    :cond_f
    nop

    .line 400
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 402
    sget-object v0, Lcom/umeng/analytics/game/c;->i:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    return-void

    .line 405
    :cond_25
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_2e

    .line 406
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->b()V

    .line 408
    :cond_2e
    return-void
.end method

.method a(DDI)V
    .registers 9

    .line 263
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 264
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_a
    nop

    .line 268
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 270
    sget-object p1, Lcom/umeng/analytics/game/c;->d:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    return-void

    .line 273
    :cond_20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "cash"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    mul-double p3, p3, v1

    double-to-long p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "coin"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "source"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_57

    .line 280
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_57
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_66

    .line 283
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_66
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p2, "pay"

    invoke-static {p1, p2, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 287
    return-void
.end method

.method a(DI)V
    .registers 7

    .line 355
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 356
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 357
    return-void

    .line 359
    :cond_a
    nop

    .line 360
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 362
    sget-object p1, Lcom/umeng/analytics/game/c;->h:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    return-void

    .line 366
    :cond_20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "coin"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "bonus_source"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_4b

    .line 371
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_4b
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_5a

    .line 374
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_5a
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p2, "bonus"

    invoke-static {p1, p2, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 378
    return-void
.end method

.method a(DLjava/lang/String;DILjava/lang/String;)V
    .registers 11

    .line 429
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 430
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 431
    return-void

    .line 433
    :cond_a
    nop

    .line 434
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 436
    sget-object p1, Lcom/umeng/analytics/game/c;->e:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    return-void

    .line 439
    :cond_20
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_ac

    cmpl-double v2, p4, v0

    if-ltz v2, :cond_ac

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 442
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_47

    .line 443
    const-string v1, "curtype"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_47
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_64

    .line 448
    :try_start_4d
    const-string p3, "UTF-8"

    invoke-virtual {p7, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    array-length p3, p3

    .line 449
    if-lez p3, :cond_5f

    const/16 v1, 0x400

    if-gt p3, v1, :cond_5f

    .line 450
    const-string p3, "orderid"

    invoke-virtual {v0, p3, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4d .. :try_end_5f} :catch_60

    .line 454
    :cond_5f
    goto :goto_64

    .line 452
    :catch_60
    move-exception p3

    .line 453
    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 457
    :cond_64
    :goto_64
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "cash"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    mul-double p4, p4, v1

    double-to-long p1, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "coin"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "source"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_96

    .line 462
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_96
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_a5

    .line 465
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_a5
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p2, "pay"

    invoke-static {p1, p2, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 470
    :cond_ac
    return-void
.end method

.method a(DLjava/lang/String;IDI)V
    .registers 16

    .line 290
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 291
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 293
    sget-object p1, Lcom/umeng/analytics/game/c;->d:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    return-void

    .line 296
    :cond_17
    int-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, p5, v0

    move-object v2, p0

    move-wide v3, p1

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/umeng/analytics/game/b;->a(DDI)V

    .line 297
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    .line 298
    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    .line 128
    if-nez p1, :cond_8

    .line 129
    const-string p1, "Context is null, can\'t init GameAgent"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 130
    return-void

    .line 132
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 133
    invoke-direct {p0, p0}, Lcom/umeng/analytics/game/b;->a(Lcom/umeng/common/ISysListener;)V

    .line 135
    new-instance p1, Lcom/umeng/analytics/game/a;

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/analytics/game/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    .line 138
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 149
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_25

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userlevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_25

    .line 157
    :catchall_24
    move-exception p1

    :cond_25
    :goto_25
    nop

    .line 158
    return-void
.end method

.method a(Ljava/lang/String;ID)V
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 302
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 303
    return-void

    .line 305
    :cond_a
    nop

    .line 306
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 308
    sget-object p1, Lcom/umeng/analytics/game/c;->f:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    return-void

    .line 312
    :cond_20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "amount"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, p3

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "coin"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_56

    .line 319
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_56
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_65

    .line 322
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_65
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p2, "buy"

    invoke-static {p1, p2, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 326
    return-void
.end method

.method a(Ljava/lang/String;IDI)V
    .registers 8

    .line 381
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 382
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 384
    sget-object p1, Lcom/umeng/analytics/game/c;->h:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    return-void

    .line 387
    :cond_17
    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/b;->a(DI)V

    .line 388
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    .line 389
    return-void
.end method

.method a(Z)V
    .registers 5

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Trace sleep time : %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 143
    sput-boolean p1, Lcom/umeng/analytics/game/b;->a:Z

    .line 144
    return-void
.end method

.method public b()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 413
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 414
    return-void

    .line 416
    :cond_a
    nop

    .line 417
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 419
    sget-object v0, Lcom/umeng/analytics/game/c;->j:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\|"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    return-void

    .line 423
    :cond_20
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_29

    .line 424
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->a()V

    .line 426
    :cond_29
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 167
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_a
    nop

    .line 171
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 173
    sget-object p1, Lcom/umeng/analytics/game/c;->a:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p1, v2, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_20
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->c(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_4b

    .line 186
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string v2, "user_level"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_4b
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 190
    return-void
.end method

.method b(Ljava/lang/String;ID)V
    .registers 7

    .line 329
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 330
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 331
    return-void

    .line 333
    :cond_a
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 334
    sget-object p1, Lcom/umeng/analytics/game/c;->g:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "\\|"

    invoke-static {p1, p2, p3}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    return-void

    .line 338
    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "amount"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, p3

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "coin"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_55

    .line 345
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    const-string p2, "user_level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_55
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_64

    .line 348
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object p1, p1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    const-string p2, "level"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_64
    iget-object p1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string p2, "use"

    invoke-static {p1, p2, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 352
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 231
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 232
    return-void

    .line 234
    :cond_a
    nop

    .line 235
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 237
    sget-object p1, Lcom/umeng/analytics/game/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    return-void

    .line 240
    :cond_20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method d(Ljava/lang/String;)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 250
    const-string p1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 251
    return-void

    .line 253
    :cond_a
    nop

    .line 254
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 256
    sget-object p1, Lcom/umeng/analytics/game/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_20
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    .line 260
    return-void
.end method
