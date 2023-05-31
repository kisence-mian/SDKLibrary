.class public Lcom/bytedance/sdk/openadsdk/core/o;
.super Ljava/lang/Object;
.source "InternalContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/o$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/j/a;

.field private static volatile f:Lcom/bytedance/sdk/openadsdk/f/b/a;

.field private static volatile g:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile h:Lcom/bytedance/sdk/openadsdk/core/h/l;

.field private static volatile i:Lcom/bytedance/sdk/openadsdk/core/h/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V

    .line 56
    :cond_8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 177
    if-eqz p2, :cond_23

    .line 178
    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/n;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/c/n;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v5

    .line 184
    :goto_e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v6

    .line 185
    new-instance v8, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/o;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    move-object v2, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;Lcom/bytedance/sdk/openadsdk/c/g;)V

    return-object v8

    .line 181
    :cond_23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->b()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v5

    .line 182
    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/l;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/c/l;-><init>(Landroid/content/Context;)V

    goto :goto_e
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 60
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a()Landroid/app/Application;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 63
    :try_start_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_15} :catch_19
    .catchall {:try_start_d .. :try_end_15} :catchall_23

    if-eqz v0, :cond_1a

    .line 75
    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    .line 67
    :catch_19
    move-exception v0

    .line 71
    :cond_1a
    if-eqz p0, :cond_17

    .line 72
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_23

    goto :goto_17

    .line 60
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;
    .registers 2

    .prologue
    .line 191
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/o$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 79
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    .line 80
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    .line 81
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->c()Lcom/bytedance/sdk/openadsdk/c/b$a;

    move-result-object v0

    .line 102
    :goto_a
    return-object v0

    .line 87
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_24

    .line 88
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 89
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_23

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 91
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 100
    :cond_23
    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_44

    .line 102
    :cond_24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_a

    .line 93
    :cond_27
    :try_start_27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/f;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v3

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->k()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v4

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    .line 97
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/o;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_23

    .line 100
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->d()Lcom/bytedance/sdk/openadsdk/c/b$b;

    move-result-object v0

    .line 120
    :goto_a
    return-object v0

    .line 109
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_25

    .line 110
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 111
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_24

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 113
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/m;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/m;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 118
    :cond_24
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_34

    .line 120
    :cond_25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_a

    .line 115
    :cond_28
    :try_start_28
    const-string v0, "ttad_bk_batch_stats"

    const-string v2, "AdStatsEventBatchThread"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_24

    .line 118
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/b;->d()Lcom/bytedance/sdk/openadsdk/c/b$b;

    move-result-object v0

    .line 138
    :goto_a
    return-object v0

    .line 127
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_25

    .line 128
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 129
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_24

    .line 130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/m;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/m;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 136
    :cond_24
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_34

    .line 138
    :cond_25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_a

    .line 133
    :cond_28
    :try_start_28
    const-string v0, "ttad_bk_stats"

    const-string v2, "AdStatsEventThread"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    goto :goto_24

    .line 136
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static f()Lcom/bytedance/sdk/openadsdk/core/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_15

    .line 143
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 144
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_14

    .line 145
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 147
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_18

    .line 149
    :cond_15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    return-object v0

    .line 147
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static g()Lcom/bytedance/sdk/openadsdk/j/a;
    .registers 5

    .prologue
    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/b;->c()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v0

    .line 167
    :goto_a
    return-object v0

    .line 156
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    if-nez v0, :cond_24

    .line 157
    const-class v1, Lcom/bytedance/sdk/openadsdk/j/a;

    monitor-enter v1

    .line 158
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    if-nez v0, :cond_23

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/j/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    .line 165
    :cond_23
    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_38

    .line 167
    :cond_24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    goto :goto_a

    .line 162
    :cond_27
    :try_start_27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/b;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/g;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/o;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/j/f;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Lcom/bytedance/sdk/openadsdk/j/a;

    goto :goto_23

    .line 165
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public static h()Lcom/bytedance/sdk/openadsdk/core/h/l;
    .registers 2

    .prologue
    .line 200
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->h:Lcom/bytedance/sdk/openadsdk/core/h/l;

    if-nez v0, :cond_13

    .line 201
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/l;

    monitor-enter v1

    .line 202
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->h:Lcom/bytedance/sdk/openadsdk/core/h/l;

    if-nez v0, :cond_12

    .line 203
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->h:Lcom/bytedance/sdk/openadsdk/core/h/l;

    .line 205
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 207
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->h:Lcom/bytedance/sdk/openadsdk/core/h/l;

    return-object v0

    .line 205
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static i()Lcom/bytedance/sdk/openadsdk/core/h/k;
    .registers 2

    .prologue
    .line 211
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->i:Lcom/bytedance/sdk/openadsdk/core/h/k;

    if-nez v0, :cond_18

    .line 212
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/l;

    monitor-enter v1

    .line 213
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->i:Lcom/bytedance/sdk/openadsdk/core/h/k;

    if-nez v0, :cond_17

    .line 214
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/k;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/k;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->i:Lcom/bytedance/sdk/openadsdk/core/h/k;

    .line 215
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->i:Lcom/bytedance/sdk/openadsdk/core/h/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/k;->b()V

    .line 217
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    .line 219
    :cond_18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->i:Lcom/bytedance/sdk/openadsdk/core/h/k;

    return-object v0

    .line 217
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public static j()Lcom/bytedance/sdk/openadsdk/f/b/a;
    .registers 2

    .prologue
    .line 223
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/b/c;->c()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    .line 237
    :goto_a
    return-object v0

    .line 226
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    if-nez v0, :cond_24

    .line 227
    const-class v1, Lcom/bytedance/sdk/openadsdk/f/b/c;

    monitor-enter v1

    .line 228
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    if-nez v0, :cond_23

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 230
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/b/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    .line 235
    :cond_23
    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_2f

    .line 237
    :cond_24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    goto :goto_a

    .line 232
    :cond_27
    :try_start_27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Lcom/bytedance/sdk/openadsdk/f/b/a;

    goto :goto_23

    .line 235
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private static k()Lcom/bytedance/sdk/openadsdk/c/g$b;
    .registers 1

    .prologue
    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    return-object v0
.end method
