.class final Lcom/bytedance/embedapplog/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cf;


# instance fields
.field private a:Lcom/bytedance/embedapplog/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/bs<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/bytedance/embedapplog/cc$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/cc$1;-><init>(Lcom/bytedance/embedapplog/cc;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/cc;->a:Lcom/bytedance/embedapplog/bs;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    .line 73
    nop

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 75
    return-object v0

    .line 77
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 78
    return-object v0

    .line 80
    :cond_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    const-string v1, "value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 82
    if-ltz v1, :cond_1b

    .line 83
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1b
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 5

    .line 30
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 31
    return v0

    .line 33
    :cond_4
    iget-object v1, p0, Lcom/bytedance/embedapplog/cc;->a:Lcom/bytedance/embedapplog/bs;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 9

    .line 38
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 40
    nop

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 p1, 0x0

    :try_start_e
    const-string v0, "oaid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_36

    .line 45
    if-nez v0, :cond_22

    .line 46
    nop

    .line 55
    if-eqz v0, :cond_21

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_21
    return-object p1

    .line 48
    :cond_22
    :try_start_22
    new-instance v1, Lcom/bytedance/embedapplog/cf$a;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/cf$a;-><init>()V

    .line 49
    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/cc;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_34

    .line 50
    nop

    .line 55
    if-eqz v0, :cond_33

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_33
    return-object v1

    .line 51
    :catchall_34
    move-exception v1

    goto :goto_38

    :catchall_36
    move-exception v1

    move-object v0, p1

    .line 52
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 53
    nop

    .line 55
    if-eqz v0, :cond_41

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_41
    return-object p1

    .line 55
    :catchall_42
    move-exception p1

    if-eqz v0, :cond_48

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    throw p1
.end method
