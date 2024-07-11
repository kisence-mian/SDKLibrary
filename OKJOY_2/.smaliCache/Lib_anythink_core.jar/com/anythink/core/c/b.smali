.class public Lcom/anythink/core/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/core/c/b;

.field private static c:Lcom/anythink/core/c/a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/anythink/core/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    .line 38
    sput-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 44
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/c/b;->e:Z

    .line 45
    return-void
.end method

.method public static a()J
    .registers 4

    .line 116
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    goto :goto_16

    .line 119
    :cond_f
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->s()J

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_16
    :goto_16
    const-wide/32 v0, 0xc800

    return-wide v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 4

    .line 159
    invoke-static {p0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/d;

    move-result-object p0

    const-string v0, "AP_SY"

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 161
    const/4 p1, 0x0

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 162
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/d/y;

    .line 163
    if-eqz p0, :cond_36

    .line 164
    invoke-virtual {p0}, Lcom/anythink/core/common/d/y;->d()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/anythink/core/c/a;->e(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 166
    if-eqz p1, :cond_35

    .line 167
    invoke-virtual {p0}, Lcom/anythink/core/common/d/y;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/c/a;->a(J)V

    .line 169
    :cond_35
    return-object p1

    .line 171
    :cond_36
    return-object p1

    .line 173
    :cond_37
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 5

    .line 180
    invoke-static {p0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/d;

    move-result-object v0

    const-string v1, "AP_SY"

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 181
    invoke-static {p2}, Lcom/anythink/core/c/a;->e(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/c/a;->a(J)V

    .line 183
    sget-object p2, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/c/a;->E()I

    move-result v0

    const-string v1, "EU_INFO"

    invoke-static {p0, p2, v1, v0}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    return-object p1
.end method

.method static synthetic a(Lcom/anythink/core/c/a;)Lcom/anythink/core/c/a;
    .registers 1

    .line 35
    sput-object p0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/c/b;
    .registers 3

    const-class v0, Lcom/anythink/core/c/b;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    if-nez v1, :cond_18

    .line 49
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 50
    :try_start_8
    sget-object v1, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    if-nez v1, :cond_13

    .line 51
    new-instance v1, Lcom/anythink/core/c/b;

    invoke-direct {v1, p0}, Lcom/anythink/core/c/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    .line 53
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0

    .line 55
    :cond_18
    :goto_18
    sget-object p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object p0

    .line 47
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/c/b;)Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/c/b;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/core/c/b;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Lcom/anythink/core/c/a;
    .registers 1

    .line 35
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static d()Lcom/anythink/core/c/a;
    .registers 3

    .line 127
    new-instance v0, Lcom/anythink/core/c/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a;-><init>()V

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/c/a;->b:Z

    .line 129
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->A()V

    .line 130
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->b(Ljava/lang/String;)V

    .line 131
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a;->a(J)V

    .line 132
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->G()V

    .line 134
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->J()V

    .line 135
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->L()V

    .line 136
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->c(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->O()V

    .line 139
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->Q()V

    .line 140
    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->d(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->y()V

    .line 143
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->t()V

    .line 145
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->l()V

    .line 146
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->n()V

    .line 148
    const-string v1, "[\"com.anythink\"]"

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->h()V

    .line 150
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/c/a;)V
    .registers 4

    .line 238
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/anythink/core/c/a;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_19

    .line 242
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    new-instance v0, Lcom/anythink/core/c/b$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/anythink/core/c/b$2;-><init>(Lcom/anythink/core/c/b;Lcom/anythink/core/c/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->b(Ljava/lang/Runnable;)V

    .line 289
    return-void

    .line 239
    :cond_19
    :goto_19
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 192
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/c/b;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/anythink/core/c/b;->e:Z

    .line 196
    new-instance v0, Lcom/anythink/core/common/e/d;

    iget-object v1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/anythink/core/common/e/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 p2, 0x0

    new-instance v1, Lcom/anythink/core/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/c/b$1;-><init>(Lcom/anythink/core/c/b;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/anythink/core/common/e/d;->a(ILcom/anythink/core/common/e/g;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    .line 232
    monitor-exit p0

    return-void

    .line 191
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 8

    .line 72
    invoke-virtual {p0, p1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 73
    if-eqz p1, :cond_19

    .line 74
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->z()J

    move-result-wide v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->u()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 77
    cmp-long p1, v4, v2

    if-lez p1, :cond_19

    .line 78
    const/4 p1, 0x0

    return p1

    .line 81
    :cond_19
    sget-object p1, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    const-string v0, "app Settings timeout or not exists"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 5

    monitor-enter p0

    .line 92
    :try_start_1
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9d

    if-nez v0, :cond_99

    .line 94
    :try_start_5
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 95
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 97
    :cond_13
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 1159
    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/d;

    move-result-object v0

    const-string v1, "AP_SY"

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1161
    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    .line 1162
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/y;

    .line 1163
    if-eqz p1, :cond_4b

    .line 1164
    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->d()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {v0}, Lcom/anythink/core/c/a;->e(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_4a

    .line 1167
    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/a;->a(J)V

    .line 1169
    :cond_4a
    goto :goto_4d

    .line 1171
    :cond_4b
    goto :goto_4d

    .line 1173
    :cond_4c
    nop

    .line 97
    :goto_4d
    nop

    .line 98
    sput-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    if-nez v0, :cond_97

    .line 2127
    new-instance p1, Lcom/anythink/core/c/a;

    invoke-direct {p1}, Lcom/anythink/core/c/a;-><init>()V

    .line 2128
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/anythink/core/c/a;->b:Z

    .line 2129
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->A()V

    .line 2130
    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/anythink/core/c/a;->b(Ljava/lang/String;)V

    .line 2131
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/c/a;->a(J)V

    .line 2132
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->G()V

    .line 2134
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->J()V

    .line 2135
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->L()V

    .line 2136
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/anythink/core/c/a;->c(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->O()V

    .line 2139
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->Q()V

    .line 2140
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/anythink/core/c/a;->d(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->y()V

    .line 2143
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->t()V

    .line 2145
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->l()V

    .line 2146
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->n()V

    .line 2148
    const-string v0, "[\"com.anythink\"]"

    invoke-virtual {p1, v0}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->h()V

    .line 2150
    nop

    .line 99
    sput-object p1, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_97} :catch_98
    .catchall {:try_start_5 .. :try_end_97} :catchall_9d

    .line 107
    :cond_97
    goto :goto_99

    .line 102
    :catch_98
    move-exception p1

    .line 109
    :cond_99
    :goto_99
    :try_start_99
    sget-object p1, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_9d

    monitor-exit p0

    return-object p1

    .line 91
    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
