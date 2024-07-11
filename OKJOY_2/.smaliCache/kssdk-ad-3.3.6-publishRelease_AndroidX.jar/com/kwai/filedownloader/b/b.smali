.class public Lcom/kwai/filedownloader/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/b/b$b;,
        Lcom/kwai/filedownloader/b/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public a(IIJ)V
    .registers 7

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/d/a;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/a;->b()I

    move-result v1

    if-ne v1, p2, :cond_13

    invoke-virtual {v0, p3, p4}, Lcom/kwai/filedownloader/d/a;->b(J)V

    :cond_28
    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public a(IJ)V
    .registers 4

    return-void
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method

.method public a(ILjava/lang/String;JJI)V
    .registers 8

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public a(ILjava/lang/Throwable;J)V
    .registers 5

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/a;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_23

    :try_start_7
    iget-object v2, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    :try_start_1c
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_23

    goto :goto_24

    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception p1

    :goto_24
    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)V
    .registers 5

    if-nez p1, :cond_b

    const-string p1, "update but model == null!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/b/b;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_32

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/b/b;->b(Lcom/kwai/filedownloader/d/c;)V

    :goto_32
    return-void
.end method

.method public b()Lcom/kwai/filedownloader/b/a$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/b/b$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/b/b$a;-><init>(Lcom/kwai/filedownloader/b/b;)V

    return-object v0
.end method

.method public b(I)Lcom/kwai/filedownloader/d/c;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwai/filedownloader/d/c;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public b(IJ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/b/b;->e(I)Z

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/d/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public c(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_1a

    :try_start_8
    iget-object v2, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    if-eqz p1, :cond_16

    :try_start_13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1a

    :cond_16
    return-object v0

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public c(IJ)V
    .registers 4

    return-void
.end method

.method public d(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    goto :goto_e

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception p1

    :goto_e
    return-void
.end method

.method public e(I)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public f(I)V
    .registers 2

    return-void
.end method
