.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;
.source "UMGameAgent.java"


# static fields
.field public static final LEVEL_LEGITIMATE_LENGTH:I = 0x40

.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/b;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/umeng/analytics/game/b;

    invoke-direct {v0}, Lcom/umeng/analytics/game/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 277
    return v0

    .line 280
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static bonus(DI)V
    .registers 8

    .line 239
    const-string v0, "\\|"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_f

    .line 241
    sget-object p0, Lcom/umeng/analytics/game/c;->z:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    return-void

    .line 245
    :cond_f
    if-lez p2, :cond_1c

    const/16 v2, 0x64

    if-lt p2, v2, :cond_16

    goto :goto_1c

    .line 250
    :cond_16
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/b;->a(DI)V

    .line 251
    return-void

    .line 247
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/umeng/analytics/game/c;->A:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    return-void
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .registers 14

    .line 254
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 256
    sget-object p0, Lcom/umeng/analytics/game/c;->B:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    return-void

    .line 260
    :cond_f
    if-ltz p1, :cond_2f

    const-wide/16 v3, 0x0

    cmpg-double v0, p2, v3

    if-gez v0, :cond_18

    goto :goto_2f

    .line 266
    :cond_18
    if-lez p4, :cond_29

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1f

    goto :goto_29

    .line 272
    :cond_1f
    sget-object v3, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;IDI)V

    .line 273
    return-void

    .line 268
    :cond_29
    :goto_29
    sget-object p0, Lcom/umeng/analytics/game/c;->D:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    return-void

    .line 262
    :cond_2f
    :goto_2f
    sget-object p0, Lcom/umeng/analytics/game/c;->C:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    return-void
.end method

.method public static buy(Ljava/lang/String;ID)V
    .registers 9

    .line 194
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 196
    sget-object p0, Lcom/umeng/analytics/game/c;->x:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    return-void

    .line 200
    :cond_f
    if-ltz p1, :cond_1e

    const-wide/16 v3, 0x0

    cmpg-double v0, p2, v3

    if-gez v0, :cond_18

    goto :goto_1e

    .line 206
    :cond_18
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    .line 207
    return-void

    .line 202
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/umeng/analytics/game/c;->y:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    return-void
.end method

.method public static exchange(DLjava/lang/String;DILjava/lang/String;)V
    .registers 15

    .line 173
    const-string v0, "\\|"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-ltz v4, :cond_26

    cmpg-double v4, p3, v2

    if-gez v4, :cond_e

    goto :goto_26

    .line 178
    :cond_e
    if-lez p5, :cond_20

    const/16 v2, 0x64

    if-lt p5, v2, :cond_15

    goto :goto_20

    .line 183
    :cond_15
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;DILjava/lang/String;)V

    .line 184
    return-void

    .line 180
    :cond_20
    :goto_20
    sget-object v2, Lcom/umeng/analytics/game/c;->w:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    return-void

    .line 175
    :cond_26
    :goto_26
    sget-object v2, Lcom/umeng/analytics/game/c;->v:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    return-void
.end method

.method public static failLevel(Ljava/lang/String;)V
    .registers 5

    .line 90
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 92
    sget-object p0, Lcom/umeng/analytics/game/c;->o:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    return-void

    .line 95
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-le v0, v3, :cond_1d

    .line 97
    sget-object p0, Lcom/umeng/analytics/game/c;->p:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_1d
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->d(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .registers 5

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 73
    sget-object p0, Lcom/umeng/analytics/game/c;->m:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    return-void

    .line 76
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-le v0, v3, :cond_1d

    .line 78
    sget-object p0, Lcom/umeng/analytics/game/c;->n:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_1d
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->c(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 26
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 27
    if-eqz p0, :cond_c

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    .line 31
    :cond_c
    sget-object p0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 34
    goto :goto_1a

    .line 32
    :catchall_14
    move-exception p0

    .line 33
    const-string p0, "please check Context!"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 35
    :goto_1a
    return-void
.end method

.method public static pay(DDI)V
    .registers 16

    .line 111
    const-string v0, "\\|"

    const/4 v1, 0x0

    if-lez p4, :cond_24

    const/16 v2, 0x64

    if-lt p4, v2, :cond_a

    goto :goto_24

    .line 117
    :cond_a
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-ltz v4, :cond_1e

    cmpg-double v4, p2, v2

    if-gez v4, :cond_15

    goto :goto_1e

    .line 123
    :cond_15
    sget-object v5, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v6, p0

    move-wide v8, p2

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/umeng/analytics/game/b;->a(DDI)V

    .line 124
    return-void

    .line 119
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/umeng/analytics/game/c;->q:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    return-void

    .line 113
    :cond_24
    :goto_24
    sget-object p0, Lcom/umeng/analytics/game/c;->r:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    return-void
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .registers 15

    .line 141
    const-string v0, "\\|"

    const/4 v1, 0x0

    if-lez p6, :cond_34

    const/16 v2, 0x64

    if-lt p6, v2, :cond_a

    goto :goto_34

    .line 147
    :cond_a
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-ltz v4, :cond_2e

    if-ltz p3, :cond_2e

    cmpg-double v4, p4, v2

    if-gez v4, :cond_17

    goto :goto_2e

    .line 153
    :cond_17
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 155
    sget-object v2, Lcom/umeng/analytics/game/c;->u:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    return-void

    .line 159
    :cond_23
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;IDI)V

    .line 160
    return-void

    .line 149
    :cond_2e
    :goto_2e
    sget-object v2, Lcom/umeng/analytics/game/c;->t:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    return-void

    .line 143
    :cond_34
    :goto_34
    sget-object v2, Lcom/umeng/analytics/game/c;->s:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public static setPlayerLevel(I)V
    .registers 2

    .line 42
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static setTraceSleepTime(Z)V
    .registers 2

    .line 38
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Z)V

    .line 39
    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .registers 5

    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 53
    sget-object p0, Lcom/umeng/analytics/game/c;->k:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-le v0, v3, :cond_1d

    .line 59
    sget-object p0, Lcom/umeng/analytics/game/c;->l:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    return-void

    .line 62
    :cond_1d
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static use(Ljava/lang/String;ID)V
    .registers 9

    .line 217
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\|"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 219
    sget-object p0, Lcom/umeng/analytics/game/c;->E:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_f
    if-ltz p1, :cond_1e

    const-wide/16 v3, 0x0

    cmpg-double v0, p2, v3

    if-gez v0, :cond_18

    goto :goto_1e

    .line 229
    :cond_18
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;ID)V

    .line 230
    return-void

    .line 225
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/umeng/analytics/game/c;->F:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    return-void
.end method
