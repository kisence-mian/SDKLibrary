.class public final Lcom/anythink/core/b/f/a;
.super Lcom/anythink/core/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/b/i",
        "<",
        "Lcom/anythink/core/b/c/c;",
        ">;"
    }
.end annotation


# static fields
.field private static e:Lcom/anythink/core/b/f/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/core/b/i;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/core/b/f/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/anythink/core/b/f/a;->e:Lcom/anythink/core/b/f/a;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/anythink/core/b/f/a;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/b/f/a;->e:Lcom/anythink/core/b/f/a;

    .line 36
    :cond_b
    sget-object v0, Lcom/anythink/core/b/f/a;->e:Lcom/anythink/core/b/f/a;

    return-object v0
.end method

.method private a(Lcom/anythink/core/b/c/c;I)V
    .registers 7

    .prologue
    .line 87
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/f/a$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/b/f/a$2;-><init>(Lcom/anythink/core/b/f/a;Lcom/anythink/core/b/c/c;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f/a;Lcom/anythink/core/b/c/h;)V
    .registers 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/anythink/core/b/i;->a(Lcom/anythink/core/b/c/h;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILcom/anythink/core/b/c/n;)V
    .registers 5

    .prologue
    .line 40
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILcom/anythink/core/b/c/n;J)V
    .registers 12

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v6

    new-instance v0, Lcom/anythink/core/b/f/a$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/b/f/a$1;-><init>(Lcom/anythink/core/b/f/a;ILcom/anythink/core/b/c/n;J)V

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 78
    monitor-exit p0

    return-void

    .line 45
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/anythink/core/b/e/h;

    iget-object v1, p0, Lcom/anythink/core/b/f/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/anythink/core/b/e/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/e/h;->a(ILcom/anythink/core/b/e/e;)V

    .line 84
    return-void
.end method
