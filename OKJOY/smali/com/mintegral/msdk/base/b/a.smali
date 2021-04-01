.class public Lcom/mintegral/msdk/base/b/a;
.super Ljava/lang/Object;
.source "BaseDao.java"


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
.field protected a:Lcom/mintegral/msdk/base/b/h;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/b/a;->a:Lcom/mintegral/msdk/base/b/h;

    .line 14
    iput-object p1, p0, Lcom/mintegral/msdk/base/b/a;->a:Lcom/mintegral/msdk/base/b/h;

    .line 15
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 18
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/a;->a:Lcom/mintegral/msdk/base/b/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/h;->a()Landroid/database/sqlite/SQLiteDatabase;
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
    .line 22
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/a;->a:Lcom/mintegral/msdk/base/b/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/h;->b()Landroid/database/sqlite/SQLiteDatabase;
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
