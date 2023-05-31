.class public Lcom/kwai/filedownloader/d0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/d0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/d0/b$b;,
        Lcom/kwai/filedownloader/d0/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
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

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/d0/a$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/d0/b$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/d0/b$a;-><init>(Lcom/kwai/filedownloader/d0/b;)V

    return-object v0
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
    .registers 8

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/a;->d()I

    move-result v2

    if-ne v2, p2, :cond_13

    invoke-virtual {v0, p3, p4}, Lcom/kwai/filedownloader/f0/a;->a(J)V

    goto :goto_e

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
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

.method public a(Lcom/kwai/filedownloader/f0/a;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/a;->c()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_23

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    :try_start_1c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_23

    :goto_1f
    return-void

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    goto :goto_1f
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 5

    if-nez p1, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "update but model == null!"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d0/b;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    goto :goto_a

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/d0/b;->b(Lcom/kwai/filedownloader/f0/c;)V

    goto :goto_a
.end method

.method public b(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    :goto_9
    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public b(IJ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/d0/b;->d(I)Z

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/f0/c;)V
    .registers 5

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public c(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_1b

    :try_start_8
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_16

    :try_start_13
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1b

    :cond_16
    move-object v0, v1

    :goto_17
    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17
.end method

.method public c(IJ)V
    .registers 4

    return-void
.end method

.method public clear()V
    .registers 3

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public d(I)Z
    .registers 4

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public e(I)Lcom/kwai/filedownloader/f0/c;
    .registers 4

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/c;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public f(I)V
    .registers 2

    return-void
.end method
