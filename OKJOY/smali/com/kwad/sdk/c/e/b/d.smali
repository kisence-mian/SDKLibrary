.class public Lcom/kwad/sdk/c/e/b/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    const-string v1, "code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    :cond_25
    const-string v1, "expired"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    goto :goto_a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    const-string v7, ""

    :try_start_3
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "oaid"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_40

    move-result-object v2

    :try_start_1e
    invoke-direct {p0, v2}, Lcom/kwad/sdk/c/e/b/d;->a(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_61

    move-result-object v0

    const-string v1, "MeizuDeviceIDHelper"

    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_65

    if-eqz v2, :cond_3f

    :goto_3c
    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_5d

    :cond_3f
    :goto_3f
    return-object v0

    :catchall_40
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v7

    :goto_44
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4a

    if-eqz v2, :cond_3f

    goto :goto_3c

    :catchall_4a
    move-exception v1

    if-eqz v2, :cond_50

    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5f

    :cond_50
    :goto_50
    :try_start_50
    throw v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception v1

    const-string v2, "MeizuDeviceIDHelper"

    const-string v3, "getOAID service not found;"

    invoke-static {v2, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :catch_5d
    move-exception v1

    goto :goto_3f

    :catch_5f
    move-exception v2

    goto :goto_50

    :catchall_61
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_44

    :catchall_65
    move-exception v1

    goto :goto_44
.end method
