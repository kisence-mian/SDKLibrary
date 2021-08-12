.class public Lcom/ss/android/socialbase/downloader/b/g;
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

.field private h:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/g;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/b/g;->c:[Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/b/g;->d:[Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_27

    .line 35
    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/g;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 37
    monitor-enter p0

    .line 38
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1b

    .line 39
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 41
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    .line 42
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->e:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_27

    .line 43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_27

    .line 41
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 46
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_25

    .line 51
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 53
    monitor-enter p0

    .line 54
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_19

    .line 55
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 57
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 58
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->g:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_25

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_25

    .line 57
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    .line 62
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->g:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_27

    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/g;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 69
    monitor-enter p0

    .line 70
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1b

    .line 71
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 73
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    .line 74
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_27

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_27

    .line 73
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 78
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->f:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public d()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->h:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_27

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/g;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 85
    monitor-enter p0

    .line 86
    :try_start_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->h:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1b

    .line 87
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->h:Landroid/database/sqlite/SQLiteStatement;

    .line 89
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    .line 90
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/g;->h:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_27

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_27

    .line 89
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 94
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/g;->h:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method
