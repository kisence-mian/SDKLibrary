.class public abstract Lcom/anythink/core/b/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/core/b/b/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/anythink/core/b/b/b$a;

    invoke-virtual {p0}, Lcom/anythink/core/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/core/b/b/b$a;-><init>(Lcom/anythink/core/b/b/b;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/core/b/b/b;->a:Lcom/anythink/core/b/b/b$a;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/anythink/core/b/b/b;->a:Lcom/anythink/core/b/b/b$a;

    invoke-virtual {v0}, Lcom/anythink/core/b/b/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 22
    monitor-enter p0

    const/4 v0, 0x0

    .line 24
    :try_start_2
    iget-object v1, p0, Lcom/anythink/core/b/b/b;->a:Lcom/anythink/core/b/b/b$a;

    invoke-virtual {v1}, Lcom/anythink/core/b/b/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_d
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    move-result-object v0

    .line 28
    :goto_8
    monitor-exit p0

    return-object v0

    .line 22
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method protected abstract b(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()I
.end method
