.class public abstract Lcom/anythink/core/common/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/common/d/o;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/CountDownTimer;

.field c:Ljava/lang/String;

.field protected d:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/j;->d:Landroid/content/Context;

    .line 38
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/j;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/j;)V
    .registers 2

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/core/common/j;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 5

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 78
    if-eqz p1, :cond_28

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 82
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/j;->a(Ljava/util/List;)V

    .line 85
    :cond_22
    iget-object p1, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 86
    goto :goto_5b

    .line 87
    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->I()I

    move-result v2

    if-lt v1, v2, :cond_5b

    .line 89
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->I()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_52

    .line 90
    iget-object v1, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    .line 93
    :cond_52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 94
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/j;->a(Ljava/util/List;)V

    .line 100
    :cond_5b
    :goto_5b
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v0, Lcom/anythink/core/common/j$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/j$2;-><init>(Lcom/anythink/core/common/j;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 111
    monitor-exit p0

    return-void

    .line 75
    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/common/d/o;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 47
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->K()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 48
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/j$1;

    invoke-direct {v3, p0, v0}, Lcom/anythink/core/common/j$1;-><init>(Lcom/anythink/core/common/j;Lcom/anythink/core/c/a;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 67
    :cond_2d
    const/4 v1, 0x1

    .line 70
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/anythink/core/common/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, v1}, Lcom/anythink/core/common/j;->a(Z)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 72
    monitor-exit p0

    return-void

    .line 42
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
