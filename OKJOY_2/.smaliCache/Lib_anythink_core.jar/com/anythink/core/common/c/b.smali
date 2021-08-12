.class public abstract Lcom/anythink/core/common/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/c/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/core/common/c/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/anythink/core/common/c/b$a;

    invoke-virtual {p0}, Lcom/anythink/core/common/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/core/common/c/b$a;-><init>(Lcom/anythink/core/common/c/b;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/core/common/c/b;->a:Lcom/anythink/core/common/c/b$a;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/anythink/core/common/c/b;->a:Lcom/anythink/core/common/c/b$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/c/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 29
    nop

    .line 31
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/c/b;->a:Lcom/anythink/core/common/c/b$a;

    invoke-virtual {v0}, Lcom/anythink/core/common/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    .line 34
    goto :goto_e

    .line 28
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :catch_c
    move-exception v0

    const/4 v0, 0x0

    .line 35
    :goto_e
    monitor-exit p0

    return-object v0
.end method

.method protected abstract b(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()I
.end method
