.class final Lcom/anythink/core/common/p$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/anythink/core/c/c;

.field b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lcom/anythink/core/common/p$a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p$a;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/anythink/core/common/p$a$a;->d:Lcom/anythink/core/common/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/anythink/core/c/c$b;)V
    .registers 9

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5f

    if-nez v0, :cond_7

    .line 221
    monitor-exit p0

    return-void

    .line 224
    :cond_7
    :try_start_7
    iget v0, p1, Lcom/anythink/core/c/c$b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_58

    iget-wide v2, p1, Lcom/anythink/core/c/c$b;->m:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_58

    .line 227
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v2, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_56

    .line 228
    iget-object v2, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 229
    iget v3, v2, Lcom/anythink/core/c/c$b;->a:I

    if-eq v3, v1, :cond_4f

    iget-wide v3, p1, Lcom/anythink/core/c/c$b;->m:D

    iget-wide v5, v2, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double v2, v3, v5

    if-ltz v2, :cond_3b

    goto :goto_4f

    .line 233
    :cond_3b
    iget-object v2, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4c

    .line 234
    iget-object v0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_5f

    .line 235
    monitor-exit p0

    return-void

    .line 227
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 230
    :cond_4f
    :goto_4f
    :try_start_4f
    iget-object v1, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5f

    .line 231
    monitor-exit p0

    return-void

    .line 242
    :cond_56
    monitor-exit p0

    return-void

    .line 225
    :cond_58
    :goto_58
    :try_start_58
    iget-object v0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-void

    .line 219
    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/common/p$a$a;)V
    .registers 1

    .line 210
    invoke-direct {p0}, Lcom/anythink/core/common/p$a$a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/p$a$a;Lcom/anythink/core/c/c$b;)V
    .registers 2

    .line 210
    invoke-direct {p0, p1}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/c/c$b;)V

    return-void
.end method

.method private static synthetic b(Lcom/anythink/core/common/p$a$a;)Ljava/util/List;
    .registers 1

    .line 210
    nop

    .line 1216
    iget-object p0, p0, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    return-object p0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 245
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/common/p$a$a;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    .line 246
    monitor-exit p0

    return-void

    .line 248
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/anythink/core/common/p$a$a;->c:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    .line 249
    monitor-exit p0

    return-void

    .line 244
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Lcom/anythink/core/common/p$a$a;->c:Z

    return v0
.end method

.method private static synthetic c(Lcom/anythink/core/common/p$a$a;)Z
    .registers 1

    .line 210
    nop

    .line 1252
    iget-boolean p0, p0, Lcom/anythink/core/common/p$a$a;->c:Z

    .line 210
    return p0
.end method
