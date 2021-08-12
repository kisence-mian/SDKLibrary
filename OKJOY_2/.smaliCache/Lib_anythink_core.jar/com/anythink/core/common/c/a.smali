.class public Lcom/anythink/core/common/c/a;
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
.field protected a:Lcom/anythink/core/common/c/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/c/b;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/c/a;->a:Lcom/anythink/core/common/c/b;

    .line 20
    iput-object p1, p0, Lcom/anythink/core/common/c/a;->a:Lcom/anythink/core/common/c/b;

    .line 21
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/c/a;->a:Lcom/anythink/core/common/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/c/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 24
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/c/a;->a:Lcom/anythink/core/common/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/c/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
