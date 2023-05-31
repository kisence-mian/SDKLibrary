.class Lcom/qq/gdt/action/a$a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/a$a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qq/gdt/action/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/qq/gdt/action/a/b;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a$a;Landroid/os/Looper;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    iget-object v0, p1, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/a/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .registers 3

    const-string v0, "======>Action reporter running now."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->b()V

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    return-void
.end method

.method private a(I)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v0, v0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "Network not available while flush actions(status=%d), schedule later."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void

    :cond_24
    const-wide/16 v4, 0x0

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    const-wide/16 v2, 0x32

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/qq/gdt/action/a/b;->a(IJJ)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "No more actions in status(%d), bravo!"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    :cond_49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    :cond_75
    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ACTIVATE_APP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-boolean v3, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    :cond_89
    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v3, v3, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v3}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/c;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9a

    iput-boolean v9, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    goto :goto_4d

    :cond_9a
    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v6}, Lcom/qq/gdt/action/a/b;->a(Ljava/util/List;I)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4d

    :cond_b0
    invoke-static {v1}, Lcom/qq/gdt/action/h/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_d4
    const-string v0, "Flushing %d actions(status=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    goto/16 :goto_26
.end method

.method private a(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a/b;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a$a$a;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/a/b;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    goto :goto_15

    :cond_24
    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    goto :goto_15
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Lcom/qq/gdt/action/a/a;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a/a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/a$a$a;->b(Ljava/util/List;I)V

    return-void
.end method

.method private a(Lcom/qq/gdt/action/a/a;Z)V
    .registers 9

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->g()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1b

    invoke-static {}, Lcom/qq/gdt/action/h/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/qq/gdt/action/h/u;->b()J

    move-result-wide v4

    :cond_1b
    const-string v0, "ACTIVATE_APP"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v0, v0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/qq/gdt/action/h/q;->a(Landroid/content/Context;ZJJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    :cond_36
    const-string v0, "START_APP"

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v0, v0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/qq/gdt/action/h/q;->a(Landroid/content/Context;JJ)V

    goto :goto_2
.end method

.method private a(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/qq/gdt/action/a$a$a$1;

    invoke-direct {v0, p0, p2}, Lcom/qq/gdt/action/a$a$a$1;-><init>(Lcom/qq/gdt/action/a$a$a;I)V

    invoke-static {p1, v0}, Lcom/qq/gdt/action/g/c;->a(Ljava/util/List;Lcom/qq/gdt/action/g/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v3, v3, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v3}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v1, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_32
    move v1, v0

    goto :goto_6

    :cond_34
    return v1

    :cond_35
    move v0, v1

    goto :goto_32
.end method

.method static synthetic b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .registers 3

    const-string v0, "Cleaning old actions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/b;->a()V

    return-void
.end method

.method private b(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/h/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/qq/gdt/action/a/b;->a(Ljava/util/List;I)I

    move-result v0

    if-gez v0, :cond_6

    const-string v0, "Update action status error"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private b(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    iget-object v2, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v2, v2, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v2}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method static synthetic c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-boolean v0, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    if-eqz v0, :cond_15

    const-string v0, "Flush all actions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->e()V

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->f()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_12} :catch_16

    :goto_12
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->d()V

    :cond_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_12
.end method

.method private d()V
    .registers 9

    const/16 v7, 0x32

    const/4 v6, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    iget-object v4, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "ACTIVATE_APP"

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-boolean v4, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v4, v4, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v4}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/h/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    :cond_50
    :goto_50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_5d
    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_81
    :goto_81
    return-void

    :cond_82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_a0

    invoke-static {v1, v7}, Lcom/qq/gdt/action/h/f;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v6}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    goto :goto_90

    :cond_a0
    invoke-direct {p0, v1, v6}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    goto :goto_81
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Flush all pending actions."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/a$a$a;->a(I)V

    return-void
.end method

.method private f()V
    .registers 3

    const-string v0, "Flush all failed actions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a$a$a;->a(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    :pswitch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message received by reporter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_36} :catch_5d

    :goto_36
    const/4 v0, 0x1

    :try_start_37
    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/a$a$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v1, v1, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v1}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/b;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/qq/gdt/action/a$a$a;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_58} :catch_6c

    :cond_58
    :goto_58
    return-void

    :pswitch_59
    :try_start_59
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->a()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_36

    :catch_5d
    move-exception v0

    const-string v1, "Worker handle message threw an unhandled exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :pswitch_64
    :try_start_64
    invoke-direct {p0, p1}, Lcom/qq/gdt/action/a$a$a;->a(Landroid/os/Message;)V

    goto :goto_36

    :pswitch_68
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6b} :catch_5d

    goto :goto_36

    :catch_6c
    move-exception v0

    const-string v1, "Send Delay \'FLUSH_ACTION\' message failed"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_68
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_59
        :pswitch_64
    .end packed-switch
.end method
