.class public final Lcom/tapjoy/internal/f;
.super Lcom/tapjoy/internal/ao;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/as;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tapjoy/internal/ao<",
        "TE;>;",
        "Lcom/tapjoy/internal/as<",
        "TE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/tapjoy/internal/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ay<",
            "TE;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/ay;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/tapjoy/internal/ay<",
            "TE;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/tapjoy/internal/ao;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    iput-object p2, p0, Lcom/tapjoy/internal/f;->b:Lcom/tapjoy/internal/ay;

    .line 36
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p1

    .line 37
    const/4 p2, 0x1

    if-eq p1, p2, :cond_36

    .line 38
    iget-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 40
    :try_start_18
    iget-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE IF NOT EXISTS List(value BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 42
    iget-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2f

    .line 44
    iget-object p1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 45
    goto :goto_36

    .line 44
    :catchall_2f
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 47
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/tapjoy/internal/f;->a()I

    move-result p1

    iput p1, p0, Lcom/tapjoy/internal/f;->c:I

    .line 48
    return-void
.end method

.method private a()I
    .registers 4

    .line 65
    nop

    .line 67
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(1) FROM List"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 69
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1e

    .line 72
    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 69
    return v1

    .line 72
    :cond_19
    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 73
    nop

    .line 74
    return v2

    .line 72
    :catchall_1e
    move-exception v1

    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 73
    throw v1
.end method

.method private static a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1

    .line 194
    if-eqz p0, :cond_5

    .line 195
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 132
    if-ltz p1, :cond_58

    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    if-ge p1, v0, :cond_58

    .line 136
    nop

    .line 138
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT value FROM List ORDER BY rowid LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 142
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_53

    .line 144
    :try_start_33
    iget-object v1, p0, Lcom/tapjoy/internal/f;->b:Lcom/tapjoy/internal/ay;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/ay;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_39} :catch_42
    .catchall {:try_start_33 .. :try_end_39} :catchall_40

    .line 148
    :try_start_39
    invoke-static {p1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_53

    .line 154
    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
    return-object v1

    .line 148
    :catchall_40
    move-exception v1

    goto :goto_49

    .line 145
    :catch_42
    move-exception v1

    .line 146
    :try_start_43
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_40

    .line 148
    :goto_49
    :try_start_49
    invoke-static {p1}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 149
    throw v1

    .line 151
    :cond_4d
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_53

    .line 154
    :catchall_53
    move-exception p1

    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 155
    throw p1

    .line 133
    :cond_58
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final b(I)V
    .registers 8

    .line 160
    if-lez p1, :cond_85

    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    if-gt p1, v0, :cond_85

    .line 164
    if-ne p1, v0, :cond_c

    .line 165
    invoke-virtual {p0}, Lcom/tapjoy/internal/f;->clear()V

    .line 166
    return-void

    .line 169
    :cond_c
    nop

    .line 171
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT rowid FROM List ORDER BY rowid LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_80

    .line 174
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 175
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_7d

    .line 177
    nop

    .line 179
    :try_start_3a
    iget-object v1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "List"

    const-string v5, "rowid <= "

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 180
    iget v2, p0, Lcom/tapjoy/internal/f;->c:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/tapjoy/internal/f;->c:I
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_80

    .line 181
    if-ne v1, p1, :cond_58

    .line 185
    nop

    .line 189
    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 190
    return-void

    .line 182
    :cond_58
    :try_start_58
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Try to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", but deleted "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_80

    .line 186
    :cond_77
    :try_start_77
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 189
    :catchall_7d
    move-exception p1

    move-object v0, v1

    goto :goto_81

    :catchall_80
    move-exception p1

    :goto_81
    invoke-static {v0}, Lcom/tapjoy/internal/f;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 190
    throw p1

    .line 161
    :cond_85
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "List"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/f;->c:I

    .line 86
    return-void
.end method

.method public final close()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :cond_a
    return-void
.end method

.method protected final finalize()V
    .registers 1

    .line 52
    invoke-virtual {p0}, Lcom/tapjoy/internal/f;->close()V

    .line 53
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/tapjoy/internal/f;, "Lcom/tapjoy/internal/f<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    :try_start_8
    iget-object v1, p0, Lcom/tapjoy/internal/f;->b:Lcom/tapjoy/internal/ay;

    invoke-interface {v1, v0, p1}, Lcom/tapjoy/internal/ay;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_39
    .catchall {:try_start_8 .. :try_end_11} :catchall_37

    .line 99
    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 100
    nop

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    iget-object v1, p0, Lcom/tapjoy/internal/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "List"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_30
    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/f;->c:I

    .line 109
    return v1

    .line 99
    :catchall_37
    move-exception v1

    goto :goto_40

    .line 96
    :catch_39
    move-exception v1

    .line 97
    :try_start_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "element":Ljava/lang/Object;, "TE;"
    throw v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 99
    .restart local p1    # "element":Ljava/lang/Object;, "TE;"
    :goto_40
    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 100
    throw v1
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 124
    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    if-lez v0, :cond_a

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/f;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 127
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    if-lez v0, :cond_d

    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/internal/f;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/f;->b(I)V

    .line 117
    return-object v0

    .line 119
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/tapjoy/internal/f;->c:I

    return v0
.end method
