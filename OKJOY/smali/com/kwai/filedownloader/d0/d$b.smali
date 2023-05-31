.class Lcom/kwai/filedownloader/d0/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/d0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/kwai/filedownloader/f0/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field final synthetic d:Lcom/kwai/filedownloader/d0/d;


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/d0/d;)V
    .registers 5

    iput-object p1, p0, Lcom/kwai/filedownloader/d0/d$b;->d:Lcom/kwai/filedownloader/d0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM filedownloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method a()V
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->b:Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_26

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v2, "delete %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d$b;->d:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "filedownloader"

    aput-object v3, v2, v4

    const-string v3, "_id"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const-string v3, "DELETE FROM %s WHERE %s IN (%s);"

    invoke-static {v3, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d$b;->d:Lcom/kwai/filedownloader/d0/d;

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "filedownloaderConnection"

    aput-object v3, v2, v4

    const-string v3, "id"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const-string v0, "DELETE FROM %s WHERE %s IN (%s);"

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/kwai/filedownloader/f0/c;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/kwai/filedownloader/d0/d;->a(Landroid/database/Cursor;)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iput v1, p0, Lcom/kwai/filedownloader/d0/d$b;->c:I

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d0/d$b;->next()Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d$b;->b:Ljava/util/List;

    iget v1, p0, Lcom/kwai/filedownloader/d0/d$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
