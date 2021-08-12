.class public Lcom/bytedance/sdk/openadsdk/core/p;
.super Ljava/lang/Object;
.source "InternalContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/k/a;

.field private static volatile f:Lcom/bytedance/sdk/openadsdk/g/c/a;

.field private static volatile g:Landroid/content/Context;

.field private static volatile h:Lcom/bytedance/sdk/openadsdk/core/h/h;

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 57
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 179
    if-eqz p2, :cond_e

    .line 180
    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/n;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/c/n;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    goto :goto_19

    .line 183
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->b()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    .line 184
    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/l;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/c/l;-><init>(Landroid/content/Context;)V

    .line 186
    :goto_19
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v1

    .line 187
    new-instance v9, Lcom/bytedance/sdk/openadsdk/c/b;

    const/4 v10, 0x0

    new-instance v11, Lcom/bytedance/sdk/openadsdk/c/o;

    const/4 v6, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;Lcom/bytedance/sdk/openadsdk/c/g;)V

    return-object v9
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    if-nez v1, :cond_25

    .line 62
    if-eqz p0, :cond_11

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_27

    .line 64
    monitor-exit v0

    return-void

    .line 67
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a()Landroid/app/Application;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_27

    if-eqz p0, :cond_25

    .line 69
    :try_start_17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    .line 70
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    if-eqz p0, :cond_23

    .line 71
    monitor-exit v0

    return-void

    .line 74
    :cond_23
    goto :goto_25

    .line 73
    :catchall_24
    move-exception p0

    .line 77
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 60
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;
    .registers 2

    .line 193
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/p$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()V
    .registers 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 81
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    .line 82
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    .line 83
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->c()Lcom/bytedance/sdk/openadsdk/c/b$a;

    move-result-object v0

    return-object v0

    .line 89
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_45

    .line 90
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 91
    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_40

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 93
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_40

    .line 95
    :cond_24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/f;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v3

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->l()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v4

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    .line 99
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 102
    :cond_40
    :goto_40
    monitor-exit v0

    goto :goto_45

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_12 .. :try_end_44} :catchall_42

    throw v1

    .line 104
    :cond_45
    :goto_45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->d()Lcom/bytedance/sdk/openadsdk/c/b$b;

    move-result-object v0

    return-object v0

    .line 111
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_34

    .line 112
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 113
    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_2f

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 115
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/m;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/m;-><init>(Z)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_2f

    .line 117
    :cond_25
    const-string v1, "ttad_bk_batch_stats"

    const-string v3, "AdStatsEventBatchThread"

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 120
    :cond_2f
    :goto_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_31

    throw v1

    .line 122
    :cond_34
    :goto_34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->d()Lcom/bytedance/sdk/openadsdk/c/b$b;

    move-result-object v0

    return-object v0

    .line 129
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_34

    .line 130
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 131
    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_2f

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 133
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/m;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/m;-><init>(Z)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_2f

    .line 135
    :cond_25
    const-string v1, "ttad_bk_stats"

    const-string v3, "AdStatsEventThread"

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 138
    :cond_2f
    :goto_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_31

    throw v1

    .line 140
    :cond_34
    :goto_34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method public static f()Lcom/bytedance/sdk/openadsdk/core/q;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/q<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    if-nez v0, :cond_19

    .line 145
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 146
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    if-nez v1, :cond_14

    .line 147
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 149
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 151
    :cond_19
    :goto_19
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Lcom/bytedance/sdk/openadsdk/core/q;

    return-object v0
.end method

.method public static g()Lcom/bytedance/sdk/openadsdk/k/a;
    .registers 5

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/b;->c()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object v0

    return-object v0

    .line 158
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    if-nez v0, :cond_39

    .line 159
    const-class v0, Lcom/bytedance/sdk/openadsdk/k/a;

    monitor-enter v0

    .line 160
    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    if-nez v1, :cond_34

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 162
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/k/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    goto :goto_34

    .line 164
    :cond_24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/b;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/k/g;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/p;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/k/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/k/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/k/f;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    .line 167
    :cond_34
    :goto_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw v1

    .line 169
    :cond_39
    :goto_39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->e:Lcom/bytedance/sdk/openadsdk/k/a;

    return-object v0
.end method

.method public static h()Lcom/bytedance/sdk/openadsdk/core/h/h;
    .registers 2

    .line 202
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->h:Lcom/bytedance/sdk/openadsdk/core/h/h;

    if-nez v0, :cond_17

    .line 203
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/h;

    monitor-enter v0

    .line 204
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->h:Lcom/bytedance/sdk/openadsdk/core/h/h;

    if-nez v1, :cond_12

    .line 205
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->h:Lcom/bytedance/sdk/openadsdk/core/h/h;

    .line 207
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 209
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->h:Lcom/bytedance/sdk/openadsdk/core/h/h;

    return-object v0
.end method

.method public static i()Lcom/bytedance/sdk/openadsdk/g/c/a;
    .registers 2

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 226
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/c/c;->c()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    return-object v0

    .line 228
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    if-nez v0, :cond_30

    .line 229
    const-class v0, Lcom/bytedance/sdk/openadsdk/g/c/c;

    monitor-enter v0

    .line 230
    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    if-nez v1, :cond_2b

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 232
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/g/c/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    goto :goto_2b

    .line 234
    :cond_24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/g/c/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    .line 237
    :cond_2b
    :goto_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2d

    throw v1

    .line 239
    :cond_30
    :goto_30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->f:Lcom/bytedance/sdk/openadsdk/g/c/a;

    return-object v0
.end method

.method public static j()V
    .registers 2

    .line 243
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_8

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    :cond_8
    return-void
.end method

.method public static k()Z
    .registers 1

    .line 249
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 252
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static l()Lcom/bytedance/sdk/openadsdk/c/g$b;
    .registers 1

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    return-object v0
.end method
