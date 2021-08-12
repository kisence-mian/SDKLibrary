.class Lcom/kwai/filedownloader/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/kwai/filedownloader/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwai/filedownloader/b/d;

.field private b:Landroid/database/Cursor;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/b/d;)V
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/b/d$b;->a:Lcom/kwai/filedownloader/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/d$b;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_12
    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "SELECT * FROM ksad_file_download"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/b/d$b;->b:Landroid/database/Cursor;
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_29

    :catch_25
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/d/c;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$b;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Landroid/database/Cursor;)Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    iput v1, p0, Lcom/kwai/filedownloader/b/d$b;->d:I

    return-object v0
.end method

.method b()V
    .registers 9

    const-string v0, "DELETE FROM %s WHERE %s IN (%s);"

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$b;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$b;->b:Landroid/database/Cursor;

    if-nez v1, :cond_f

    goto :goto_6f

    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d$b;->c:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_31

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v5, "delete %s"

    invoke-static {p0, v5, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/kwai/filedownloader/b/d$b;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v2}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ksad_file_download"

    aput-object v7, v6, v3

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v0, v6}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kwai/filedownloader/b/d$b;->a:Lcom/kwai/filedownloader/b/d;

    invoke-static {v2}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ksad_file_download_connection"

    aput-object v6, v5, v3

    const-string v3, "id"

    aput-object v3, v5, v4

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_65} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Ljava/lang/Throwable;)V

    goto :goto_6f

    :catch_6b
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$b;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/b/d$b;->a()Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d$b;->c:Ljava/util/List;

    iget v1, p0, Lcom/kwai/filedownloader/b/d$b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
