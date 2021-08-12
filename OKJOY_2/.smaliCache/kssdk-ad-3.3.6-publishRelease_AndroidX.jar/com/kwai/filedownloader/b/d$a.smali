.class public Lcom/kwai/filedownloader/b/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/b/d;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/kwai/filedownloader/b/d$b;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
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
.method constructor <init>(Lcom/kwai/filedownloader/b/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/kwai/filedownloader/b/d$a;-><init>(Lcom/kwai/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Lcom/kwai/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/kwai/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 12

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->c:Lcom/kwai/filedownloader/b/d$b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwai/filedownloader/b/d$b;->b()V

    :cond_7
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gez v0, :cond_19

    return-void

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_ad

    iget-object v3, p0, Lcom/kwai/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/kwai/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/d/c;

    iget-object v5, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v5}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "ksad_file_download"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v5, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v5}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "ksad_file_download"

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->p()Landroid/content/ContentValues;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v5

    if-le v5, v8, :cond_a9

    iget-object v5, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v5, v3}, Lcom/kwai/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_6d

    goto :goto_a9

    :cond_6d
    iget-object v6, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v6}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "ksad_file_download_connection"

    const-string v10, "id = ?"

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-virtual {v6, v7, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kwai/filedownloader/d/a;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kwai/filedownloader/d/a;->a(I)V

    iget-object v6, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v6}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "ksad_file_download_connection"

    invoke-virtual {v5}, Lcom/kwai/filedownloader/d/a;->f()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v6, v7, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_86

    :cond_a9
    :goto_a9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    :cond_ad
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_ed

    iget-object v2, p0, Lcom/kwai/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    if-eqz v2, :cond_ed

    monitor-enter v0
    :try_end_b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_b6} :catch_120
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_b6} :catch_10a
    .catchall {:try_start_19 .. :try_end_b6} :catchall_108

    :try_start_b6
    iget-object v2, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_bc
    if-ge v1, v2, :cond_e8

    iget-object v3, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v3

    iget-object v4, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v4, v3}, Lcom/kwai/filedownloader/b/d;->c(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e5

    iget-object v5, p0, Lcom/kwai/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_db
    .catchall {:try_start_b6 .. :try_end_db} :catchall_ea

    :try_start_db
    iget-object v6, p0, Lcom/kwai/filedownloader/b/d$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5

    goto :goto_e5

    :catchall_e2
    move-exception v1

    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v1

    :cond_e5
    :goto_e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_e8
    monitor-exit v0

    goto :goto_ed

    :catchall_ea
    move-exception v1

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw v1

    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_f6} :catch_120
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f6} :catch_10a
    .catchall {:try_start_ec .. :try_end_f6} :catchall_108

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_13a

    :try_start_fe
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_107} :catch_136

    goto :goto_13a

    :catchall_108
    move-exception v0

    goto :goto_13b

    :catch_10a
    move-exception v0

    :try_start_10b
    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Ljava/lang/Throwable;)V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_108

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_13a

    :try_start_116
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11f} :catch_136

    goto :goto_13a

    :catch_120
    move-exception v0

    :try_start_121
    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_108

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_13a

    :try_start_12c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_135} :catch_136

    goto :goto_13a

    :catch_136
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Ljava/lang/Throwable;)V

    :cond_13a
    :goto_13a
    return-void

    :goto_13b
    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_151

    :try_start_143
    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14c} :catch_14d

    goto :goto_151

    :catch_14d
    move-exception v1

    invoke-static {v1}, Lcom/kwai/filedownloader/b/d;->a(Ljava/lang/Throwable;)V

    :cond_151
    :goto_151
    throw v0
.end method

.method public a(ILcom/kwai/filedownloader/d/c;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/d/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_13

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p1

    :cond_13
    :goto_13
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/kwai/filedownloader/b/d$b;

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$a;->a:Lcom/kwai/filedownloader/b/d;

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/b/d$b;-><init>(Lcom/kwai/filedownloader/b/d;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/d$a;->c:Lcom/kwai/filedownloader/b/d$b;

    return-object v0
.end method
