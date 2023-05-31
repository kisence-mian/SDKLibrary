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
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/anythink/core/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    .line 34
    sput-object v1, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/c/b;->e:Z

    .line 41
    return-void
.end method

.method public static a()J
    .registers 4

    .prologue
    .line 112
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 113
    :cond_10
    const-wide/32 v0, 0xc800

    .line 115
    :goto_13
    return-wide v0

    :cond_14
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->i()J

    move-result-wide v0

    goto :goto_13
.end method

.method static synthetic a(Lcom/anythink/core/c/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-static {p0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/d;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/d;

    move-result-object v0

    const-string v2, "AP_SY"

    invoke-virtual {v0, p1, v2}, Lcom/anythink/core/b/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 155
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/l;

    .line 156
    if-eqz v0, :cond_37

    .line 157
    invoke-virtual {v0}, Lcom/anythink/core/b/c/l;->d()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/anythink/core/c/a;->d(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_35

    .line 160
    invoke-virtual {v0}, Lcom/anythink/core/b/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/c/a;->a(J)V

    :cond_35
    move-object v0, v1

    .line 166
    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    .line 164
    goto :goto_36

    :cond_39
    move-object v0, v1

    .line 166
    goto :goto_36
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 7

    .prologue
    .line 173
    invoke-static {p0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/d;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/d;

    move-result-object v0

    const-string v1, "AP_SY"

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/b/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 174
    invoke-static {p2}, Lcom/anythink/core/c/a;->d(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/c/a;->a(J)V

    .line 176
    sget-object v1, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    const-string v2, "EU_INFO"

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->u()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/c/a;)Lcom/anythink/core/c/a;
    .registers 1

    .prologue
    .line 31
    sput-object p0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/c/b;
    .registers 3

    .prologue
    .line 44
    sget-object v0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    if-nez v0, :cond_13

    .line 45
    const-class v1, Lcom/anythink/core/c/b;

    monitor-enter v1

    .line 46
    :try_start_7
    sget-object v0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/anythink/core/c/b;

    invoke-direct {v0, p0}, Lcom/anythink/core/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    .line 49
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    sget-object v0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b;

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/b/e/e;)V
    .registers 6

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/anythink/core/c/b;->e:Z

    if-eqz v0, :cond_5

    .line 186
    :goto_4
    return-void

    .line 184
    :cond_5
    new-instance v0, Lcom/anythink/core/b/e/c;

    iget-object v1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/anythink/core/b/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/anythink/core/b/e/c;->a(ILcom/anythink/core/b/e/e;)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/anythink/core/c/b;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/anythink/core/c/b;->e:Z

    return p1
.end method

.method static synthetic b()Lcom/anythink/core/c/a;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static d()Lcom/anythink/core/c/a;
    .registers 4

    .prologue
    .line 123
    new-instance v0, Lcom/anythink/core/c/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a;-><init>()V

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/c/a;->b:Z

    .line 125
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->q()V

    .line 126
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)V

    .line 127
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/c/a;->a(J)V

    .line 128
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->w()V

    .line 130
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->z()V

    .line 131
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->B()V

    .line 132
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->b(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->E()V

    .line 135
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->G()V

    .line 136
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->c(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->o()V

    .line 139
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->j()V

    .line 141
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->b()V

    .line 142
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->d()V

    .line 143
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/c/a;)V
    .registers 4

    .prologue
    .line 230
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/anythink/core/c/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 280
    :cond_c
    :goto_c
    return-void

    .line 234
    :cond_d
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    new-instance v0, Lcom/anythink/core/c/b$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/anythink/core/c/b$2;-><init>(Lcom/anythink/core/c/b;Lcom/anythink/core/c/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->b(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 192
    new-instance v0, Lcom/anythink/core/c/b$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/c/b$1;-><init>(Lcom/anythink/core/c/b;Ljava/lang/String;)V

    .line 2181
    iget-boolean v1, p0, Lcom/anythink/core/c/b;->e:Z

    if-nez v1, :cond_14

    .line 2184
    new-instance v1, Lcom/anythink/core/b/e/c;

    iget-object v2, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/anythink/core/b/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/e/c;->a(ILcom/anythink/core/b/e/e;)V

    .line 224
    :cond_14
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_19

    .line 70
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->p()J

    move-result-wide v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 72
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->k()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 73
    cmp-long v0, v0, v4

    if-lez v0, :cond_19

    .line 74
    const/4 v0, 0x0

    .line 78
    :goto_18
    return v0

    .line 77
    :cond_19
    sget-object v0, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    const-string v1, "app Settings timeout or not exists"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/anythink/core/c/a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 88
    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_93

    if-nez v0, :cond_8b

    .line 90
    :try_start_6
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 91
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 93
    :cond_14
    iget-object v0, p0, Lcom/anythink/core/c/b;->d:Landroid/content/Context;

    .line 1152
    invoke-static {v0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/d;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/d;

    move-result-object v0

    const-string v2, "AP_SY"

    invoke-virtual {v0, p1, v2}, Lcom/anythink/core/b/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_91

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_91

    .line 1155
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/l;

    .line 1156
    if-eqz v0, :cond_8f

    .line 1157
    invoke-virtual {v0}, Lcom/anythink/core/b/c/l;->d()Ljava/lang/String;

    move-result-object v1

    .line 1158
    invoke-static {v1}, Lcom/anythink/core/c/a;->d(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_4a

    .line 1160
    invoke-virtual {v0}, Lcom/anythink/core/b/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/c/a;->a(J)V

    :cond_4a
    move-object v0, v1

    .line 94
    :goto_4b
    sput-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;

    if-nez v0, :cond_8b

    .line 2123
    new-instance v0, Lcom/anythink/core/c/a;

    invoke-direct {v0}, Lcom/anythink/core/c/a;-><init>()V

    .line 2124
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/c/a;->b:Z

    .line 2125
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->q()V

    .line 2126
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->a(Ljava/lang/String;)V

    .line 2127
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/c/a;->a(J)V

    .line 2128
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->w()V

    .line 2130
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->z()V

    .line 2131
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->B()V

    .line 2132
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->b(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->E()V

    .line 2135
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->G()V

    .line 2136
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/a;->c(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->o()V

    .line 2139
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->j()V

    .line 2141
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->b()V

    .line 2142
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->d()V

    .line 95
    sput-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8b} :catch_96
    .catchall {:try_start_6 .. :try_end_8b} :catchall_93

    .line 105
    :cond_8b
    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/anythink/core/c/b;->c:Lcom/anythink/core/c/a;
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_93

    monitor-exit p0

    return-object v0

    :cond_8f
    move-object v0, v1

    .line 1164
    goto :goto_4b

    :cond_91
    move-object v0, v1

    .line 1166
    goto :goto_4b

    .line 88
    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_96
    move-exception v0

    goto :goto_8b
.end method
