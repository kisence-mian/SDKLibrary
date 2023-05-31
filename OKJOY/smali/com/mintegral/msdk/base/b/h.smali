.class public abstract Lcom/mintegral/msdk/base/b/h;
.super Ljava/lang/Object;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/b/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/b/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/mintegral/msdk/base/b/h$a;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mintegral/msdk/base/b/h$a;-><init>(Lcom/mintegral/msdk/base/b/h;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/b/h;->a:Lcom/mintegral/msdk/base/b/h$a;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mintegral/msdk/base/b/h;->a:Lcom/mintegral/msdk/base/b/h$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/h$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 21
    monitor-enter p0

    const/4 v0, 0x0

    .line 23
    :try_start_2
    iget-object v1, p0, Lcom/mintegral/msdk/base/b/h;->a:Lcom/mintegral/msdk/base/b/h$a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/h$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_d
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    move-result-object v0

    .line 27
    :goto_8
    monitor-exit p0

    return-object v0

    .line 21
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

.method protected abstract c(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
