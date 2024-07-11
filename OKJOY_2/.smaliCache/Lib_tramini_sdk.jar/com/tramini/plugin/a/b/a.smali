.class public abstract Lcom/tramini/plugin/a/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/tramini/plugin/a/b/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/b/b;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tramini/plugin/a/b/a;->a:Lcom/tramini/plugin/a/b/b;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method protected final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/tramini/plugin/a/b/a;->a:Lcom/tramini/plugin/a/b/b;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/b/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 27
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method protected final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/tramini/plugin/a/b/a;->a:Lcom/tramini/plugin/a/b/b;

    invoke-virtual {v0}, Lcom/tramini/plugin/a/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 31
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
