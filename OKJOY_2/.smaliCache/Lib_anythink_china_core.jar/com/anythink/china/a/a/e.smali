.class public final Lcom/anythink/china/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/anythink/china/a/a/e;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .registers 10

    .line 27
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/anythink/china/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.meizu.flyme.openidsdk"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 30
    goto :goto_11

    .line 29
    :catchall_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_11
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 33
    iget-object v1, p0, Lcom/anythink/china/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 34
    nop

    .line 37
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_21
    const-string v6, "oaid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 38
    nop

    .line 40
    if-nez v2, :cond_30

    .line 41
    goto :goto_47

    .line 42
    :cond_30
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 43
    goto :goto_47

    .line 45
    :cond_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    const-string v3, "value"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 47
    if-lez v3, :cond_46

    .line 48
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_46
    nop

    .line 55
    :goto_47
    invoke-interface {p1, v1, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 58
    if-eqz v2, :cond_4f

    .line 59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_50

    .line 63
    :cond_4f
    goto :goto_54

    .line 62
    :catchall_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    :goto_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 67
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 71
    :cond_5d
    return-void
.end method
