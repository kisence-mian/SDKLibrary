.class public Lcom/anythink/core/b/b/a;
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
.field protected a:Lcom/anythink/core/b/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/b/b;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/b/b/a;->a:Lcom/anythink/core/b/b/b;

    .line 13
    iput-object p1, p0, Lcom/anythink/core/b/b/a;->a:Lcom/anythink/core/b/b/b;

    .line 14
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/b/a;->a:Lcom/anythink/core/b/b/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/b/b;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/b/a;->a:Lcom/anythink/core/b/b/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
