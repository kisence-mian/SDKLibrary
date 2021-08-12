.class public final Lcom/tencent/bugly/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field private static b:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private static h:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/bugly/proguard/w;

.field private final e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 41
    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 60
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 62
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/util/List;

    .line 63
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/proguard/w;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/common/strategy/a;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/crashreport/common/strategy/a;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-nez v1, :cond_e

    .line 71
    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 73
    :cond_e
    sget-object p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/crashreport/common/strategy/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 69
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 159
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_10

    .line 163
    :cond_d
    sput-object p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    .line 164
    return-void

    .line 160
    :cond_10
    :goto_10
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "URL user set is invalid."

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p0
.end method

.method public static d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .registers 2

    .line 277
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/p;->a(I)Ljava/util/List;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 280
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/r;

    .line 281
    iget-object v1, v0, Lcom/tencent/bugly/proguard/r;->g:[B

    if-eqz v1, :cond_27

    .line 282
    iget-object v0, v0, Lcom/tencent/bugly/proguard/r;->g:[B

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    .line 285
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/proguard/w;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/strategy/a$1;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method protected final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .registers 9

    .line 139
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/tencent/bugly/crashreport/biz/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[Strategy] Notify %s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    invoke-static {p1, p2}, Lcom/tencent/bugly/crashreport/biz/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    .line 141
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/a;

    .line 143
    :try_start_26
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v1, p1}, Lcom/tencent/bugly/a;->onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_39

    .line 149
    goto :goto_1a

    .line 145
    :catchall_39
    move-exception v1

    .line 146
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :cond_43
    goto :goto_1a

    .line 151
    :cond_44
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/as;)V
    .registers 10

    .line 170
    if-nez p1, :cond_3

    .line 171
    return-void

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_12

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/as;->h:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 175
    return-void

    .line 178
    :cond_12
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 180
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/as;->a:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 181
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/as;->c:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 182
    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/as;->b:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 185
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_35

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 186
    :cond_35
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 187
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "[Strategy] Upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 190
    :cond_4c
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 191
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "[Strategy] Exception upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 196
    :cond_63
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    if-eqz v1, :cond_77

    .line 197
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ar;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 198
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->f:Lcom/tencent/bugly/proguard/ar;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ar;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    .line 201
    :cond_77
    iget-wide v4, p1, Lcom/tencent/bugly/proguard/as;->h:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_83

    .line 202
    iget-wide v4, p1, Lcom/tencent/bugly/proguard/as;->h:J

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    .line 205
    :cond_83
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    if-eqz v1, :cond_108

    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_108

    .line 206
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    .line 207
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    const-string v4, "B11"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    const-string v4, "1"

    if-eqz v1, :cond_aa

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 210
    iput-boolean v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    goto :goto_ac

    .line 212
    :cond_aa
    iput-boolean v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    .line 215
    :goto_ac
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    const-string v5, "B3"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    if-eqz v1, :cond_c2

    .line 217
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->y:J

    .line 220
    :cond_c2
    iget v1, p1, Lcom/tencent/bugly/proguard/as;->i:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    .line 221
    iget v1, p1, Lcom/tencent/bugly/proguard/as;->i:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->x:J

    .line 223
    iget-object v1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    const-string v5, "B27"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    if-eqz v1, :cond_f1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f1

    .line 227
    :try_start_de
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    if-lez v1, :cond_e6

    .line 229
    iput v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e6} :catch_e7

    .line 235
    :cond_e6
    goto :goto_f1

    .line 231
    :catch_e7
    move-exception v1

    .line 232
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_f1

    .line 233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_f1
    :goto_f1
    iget-object p1, p1, Lcom/tencent/bugly/proguard/as;->g:Ljava/util/Map;

    const-string v1, "B25"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 238
    if-eqz p1, :cond_106

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 240
    iput-boolean v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    goto :goto_108

    .line 242
    :cond_106
    iput-boolean v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    .line 247
    :cond_108
    :goto_108
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v2

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v3

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    const/4 v1, 0x3

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v1

    const/4 v1, 0x4

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v1

    const/4 v1, 0x5

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v1

    const/4 v1, 0x6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v1

    const/4 v1, 0x7

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v1

    const/16 v1, 0x8

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v1

    const/16 v1, 0x9

    iget-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v1

    const-string v1, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 256
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 259
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/proguard/p;->b(I)V

    .line 260
    new-instance p1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 261
    iput v2, p1, Lcom/tencent/bugly/proguard/r;->b:I

    .line 262
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v1, p1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 263
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:J

    iput-wide v1, p1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 264
    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 265
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/r;)Z

    .line 268
    invoke-virtual {p0, v0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    .line 271
    return-void
.end method

.method public final declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 121
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_5

    .line 129
    return-object v0

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method
