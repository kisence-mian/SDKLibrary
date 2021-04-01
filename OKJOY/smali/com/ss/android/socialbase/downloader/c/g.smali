.class public Lcom/ss/android/socialbase/downloader/c/g;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Landroid/database/sqlite/SQLiteStatement;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/c/g;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/c/g;->c:[Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/c/g;->d:[Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_23

    .line 34
    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/g;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 36
    monitor-enter p0

    .line 37
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1b

    .line 38
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 40
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    .line 41
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_23

    .line 42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 45
    :cond_23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 40
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_21

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 52
    monitor-enter p0

    .line 53
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_19

    .line 54
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 56
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24

    .line 57
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_21

    .line 58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 61
    :cond_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->g:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 56
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_23

    .line 66
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/g;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/j;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 68
    monitor-enter p0

    .line 69
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1b

    .line 70
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 72
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    .line 73
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_23

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 77
    :cond_23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/g;->f:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 72
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
