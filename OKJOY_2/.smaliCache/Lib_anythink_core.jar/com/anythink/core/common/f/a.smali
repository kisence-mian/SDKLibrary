.class public final Lcom/anythink/core/common/f/a;
.super Lcom/anythink/core/common/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/j<",
        "Lcom/anythink/core/common/d/e;",
        ">;"
    }
.end annotation


# static fields
.field private static e:Lcom/anythink/core/common/f/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/anythink/core/common/j;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;
    .registers 3

    const-class v0, Lcom/anythink/core/common/f/a;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/f/a;->e:Lcom/anythink/core/common/f/a;

    if-nez v1, :cond_e

    .line 41
    new-instance v1, Lcom/anythink/core/common/f/a;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/f/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/f/a;->e:Lcom/anythink/core/common/f/a;

    .line 43
    :cond_e
    sget-object p0, Lcom/anythink/core/common/f/a;->e:Lcom/anythink/core/common/f/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 39
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/common/f/a;Lcom/anythink/core/common/d/o;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/anythink/core/common/j;->a(Lcom/anythink/core/common/d/o;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILcom/anythink/core/common/d/aa;)V
    .registers 5

    monitor-enter p0

    .line 47
    const-wide/16 v0, -0x1

    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILcom/anythink/core/common/d/aa;J)V
    .registers 13

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/f/a$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/f/a$1;-><init>(Lcom/anythink/core/common/f/a;ILcom/anythink/core/common/d/aa;J)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 91
    monitor-exit p0

    return-void

    .line 51
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/e;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 98
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->d()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 112
    new-instance v3, Lcom/anythink/core/common/e/j;

    iget-object v4, p0, Lcom/anythink/core/common/f/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->d()I

    move-result v0

    invoke-direct {v3, v4, v0, p1}, Lcom/anythink/core/common/e/j;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v1, v2}, Lcom/anythink/core/common/e/j;->a(ILcom/anythink/core/common/e/g;)V

    .line 113
    return-void

    .line 105
    :pswitch_32
    new-instance v3, Lcom/anythink/core/common/e/j;

    iget-object v4, p0, Lcom/anythink/core/common/f/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->d()I

    move-result v5

    invoke-direct {v3, v4, v5, p1}, Lcom/anythink/core/common/e/j;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v1, v2}, Lcom/anythink/core/common/e/j;->a(ILcom/anythink/core/common/e/g;)V

    .line 107
    new-instance v1, Lcom/anythink/core/common/e/a/d;

    invoke-direct {v1, p1}, Lcom/anythink/core/common/e/a/d;-><init>(Ljava/util/List;)V

    .line 108
    const/4 p1, 0x2

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/e/a/d;->a(ILjava/lang/String;)V

    .line 109
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/e/a/d;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 110
    return-void

    .line 100
    :pswitch_51
    new-instance v1, Lcom/anythink/core/common/e/a/d;

    invoke-direct {v1, p1}, Lcom/anythink/core/common/e/a/d;-><init>(Ljava/util/List;)V

    .line 101
    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/e/a/d;->a(ILjava/lang/String;)V

    .line 102
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/e/a/d;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 103
    return-void

    .line 116
    :cond_62
    new-instance v0, Lcom/anythink/core/common/e/j;

    iget-object v3, p0, Lcom/anythink/core/common/f/a;->d:Landroid/content/Context;

    invoke-direct {v0, v3, v1, p1}, Lcom/anythink/core/common/e/j;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/e/j;->a(ILcom/anythink/core/common/e/g;)V

    .line 120
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_51
        :pswitch_32
    .end packed-switch
.end method
