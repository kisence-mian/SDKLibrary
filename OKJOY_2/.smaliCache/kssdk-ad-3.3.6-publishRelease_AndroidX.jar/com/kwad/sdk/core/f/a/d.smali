.class public Lcom/kwad/sdk/core/f/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_30

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

    if-lez v1, :cond_30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    :cond_30
    :goto_30
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 11

    const-string v0, "MeizuDeviceIDHelper"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "oaid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/f/a/d;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_43

    :goto_3d
    :try_start_3d
    invoke-static {v2}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    goto :goto_50

    :catch_41
    move-exception v2

    goto :goto_48

    :catchall_43
    move-exception v3

    invoke-static {v2}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    throw v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_41

    :goto_48
    const-string v3, "getOAID service not found;"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_50
    return-object v1
.end method
