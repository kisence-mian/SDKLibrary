.class public abstract Lcom/anythink/core/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/b/c/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/CountDownTimer;

.field c:Ljava/lang/String;

.field protected d:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/i;->d:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/i;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/i;)V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/core/b/i;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 6

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 71
    if-eqz p1, :cond_2f

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {p0, v0}, Lcom/anythink/core/b/i;->a(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    :cond_21
    :goto_21
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/i$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/i$2;-><init>(Lcom/anythink/core/b/i;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_5d

    .line 99
    monitor-exit p0

    return-void

    .line 77
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->y()I

    move-result v3

    if-lt v2, v3, :cond_21

    .line 79
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_46
    if-ltz v0, :cond_59

    .line 80
    iget-object v2, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 83
    :cond_59
    invoke-virtual {p0, v1}, Lcom/anythink/core/b/i;->a(Ljava/util/List;)V
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_5d

    goto :goto_21

    .line 69
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/b/c/h;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v2, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 40
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->A()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_36

    .line 41
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/b/i$1;

    invoke-direct {v3, p0, v1}, Lcom/anythink/core/b/i$1;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/c/a;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 63
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/anythink/core/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v0}, Lcom/anythink/core/b/i;->a(Z)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    .line 65
    monitor-exit p0

    return-void

    .line 60
    :cond_36
    const/4 v0, 0x1

    goto :goto_2c

    .line 36
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method
