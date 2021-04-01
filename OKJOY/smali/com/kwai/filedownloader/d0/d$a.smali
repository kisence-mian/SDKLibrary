.class public Lcom/kwai/filedownloader/d0/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/d0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/d0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/kwai/filedownloader/d0/d$b;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
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

.field final synthetic e:Lcom/kwai/filedownloader/d0/d;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d0/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/kwai/filedownloader/d0/d$a;-><init>(Lcom/kwai/filedownloader/d0/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Lcom/kwai/filedownloader/d0/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->a:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/kwai/filedownloader/d0/d$a;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->b:Lcom/kwai/filedownloader/d0/d$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d0/d$b;->a()V

    :cond_9
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gez v4, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v2

    :goto_1c
    if-ge v3, v4, :cond_b3

    :try_start_1e
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/c;

    iget-object v5, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v5}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_a8

    move-result-object v5

    const-string v6, "filedownloader"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    :try_start_37
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v5}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_a8

    move-result-object v5

    const-string v6, "filedownloader"

    const/4 v7, 0x0

    :try_start_4c
    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->q()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v5

    if-le v5, v11, :cond_65

    iget-object v5, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v5, v1}, Lcom/kwai/filedownloader/d0/d;->c(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_69

    :cond_65
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    :cond_69
    iget-object v6, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v6}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_a8

    move-result-object v6

    const-string v7, "filedownloaderConnection"

    const-string v8, "id = ?"

    const/4 v9, 0x1

    :try_start_74
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_84
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/kwai/filedownloader/f0/a;->a(I)V

    iget-object v6, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v6}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9c
    .catchall {:try_start_74 .. :try_end_9c} :catchall_a8

    move-result-object v6

    const-string v7, "filedownloaderConnection"

    const/4 v8, 0x0

    :try_start_a0
    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/a;->f()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v6, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_a8

    goto :goto_84

    :catchall_a8
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_b3
    :try_start_b3
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_f5

    iget-object v3, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_a8

    :try_start_be
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v2

    :goto_c5
    if-ge v1, v4, :cond_f4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    iget-object v2, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/d0/d;->c(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_ea

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_ea

    iget-object v5, p0, Lcom/kwai/filedownloader/d0/d$a;->d:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_e4
    .catchall {:try_start_be .. :try_end_e4} :catchall_f1

    :try_start_e4
    iget-object v6, p0, Lcom/kwai/filedownloader/d0/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5

    :cond_ea
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c5

    :catchall_ee
    move-exception v0

    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_e4 .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v0

    :catchall_f1
    move-exception v0

    monitor-exit v3
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f1

    :try_start_f3
    throw v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_a8

    :cond_f4
    :try_start_f4
    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f1

    :cond_f5
    :try_start_f5
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_a8

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_11
.end method

.method public a(ILcom/kwai/filedownloader/f0/c;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/f0/c;)V
    .registers 5

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_f

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    :cond_f
    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/kwai/filedownloader/d0/d$b;

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d$a;->e:Lcom/kwai/filedownloader/d0/d;

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/d0/d$b;-><init>(Lcom/kwai/filedownloader/d0/d;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/d$a;->b:Lcom/kwai/filedownloader/d0/d$b;

    return-object v0
.end method
