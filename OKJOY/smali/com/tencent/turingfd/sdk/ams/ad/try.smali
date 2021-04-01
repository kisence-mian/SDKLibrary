.class public Lcom/tencent/turingfd/sdk/ams/ad/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lcom/tencent/turingfd/sdk/ams/ad/try;


# instance fields
.field public a:Lcom/tencent/turingfd/sdk/ams/ad/if;

.field public b:Lcom/tencent/turingfd/sdk/ams/ad/if;

.field public c:Lcom/tencent/turingfd/sdk/ams/ad/if;

.field public d:Lcom/tencent/turingfd/sdk/ams/ad/if;

.field public e:Ljava/lang/Boolean;

.field public f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/if;

    const-string v1, "udid"

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/if;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->a:Lcom/tencent/turingfd/sdk/ams/ad/if;

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/if;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/if;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->b:Lcom/tencent/turingfd/sdk/ams/ad/if;

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/if;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/if;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->d:Lcom/tencent/turingfd/sdk/ams/ad/if;

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/if;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/if;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->c:Lcom/tencent/turingfd/sdk/ams/ad/if;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/tencent/turingfd/sdk/ams/ad/int;
    .registers 5

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/int;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/int;-><init>(Ljava/lang/String;I)V

    if-nez p0, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_21

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->value:Ljava/lang/String;

    :cond_21
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->code:I

    :cond_2f
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/int;->k:J

    goto :goto_9
.end method

.method public static final d()Lcom/tencent/turingfd/sdk/ams/ad/try;
    .registers 2

    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/try;->g:Lcom/tencent/turingfd/sdk/ams/ad/try;

    if-nez v0, :cond_f

    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/try;

    monitor-enter v1

    :try_start_7
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/try;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/try;->g:Lcom/tencent/turingfd/sdk/ams/ad/try;

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    :cond_f
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/try;->g:Lcom/tencent/turingfd/sdk/ams/ad/try;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    if-nez p2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    :goto_d
    return v0

    .line 4294967295
    :cond_e
    const-string v2, "com.meizu.flyme.openidsdk"

    if-eqz p1, :cond_18

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_22

    :cond_18
    move v1, v0

    :goto_19
    if-nez v1, :cond_29

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->e:Ljava/lang/Boolean;

    goto :goto_d

    .line 1
    :cond_22
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    goto :goto_19

    .line 2
    :cond_29
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_2f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_83
    .catchall {:try_start_2f .. :try_end_38} :catchall_7a

    const/4 v5, 0x0

    const-string v7, "supported"

    :try_start_3b
    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_83
    .catchall {:try_start_3b .. :try_end_41} :catchall_7a

    move-result-object v0

    if-eqz v0, :cond_73

    :try_start_44
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/database/Cursor;)Lcom/tencent/turingfd/sdk/ams/ad/int;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/int;->value:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_a3
    .catchall {:try_start_44 .. :try_end_4a} :catchall_a5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 4
    :goto_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySupport, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->e:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 3
    :cond_73
    if-eqz v0, :cond_78

    :goto_75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_78
    move-object v0, v6

    goto :goto_4e

    :catchall_7a
    move-exception v0

    :goto_7b
    move-object v1, v0

    move-object v0, v6

    .line 4
    :goto_7d
    if-eqz v0, :cond_82

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v1

    .line 3
    :catch_83
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_86
    :try_start_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_9f

    const-string v3, "querySupport, Exception : "

    :try_start_8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_9f

    if-eqz v0, :cond_78

    goto :goto_75

    :catchall_9f
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_7b

    :catch_a3
    move-exception v1

    goto :goto_86

    :catchall_a5
    move-exception v1

    goto :goto_7d
.end method

.method public d(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/if;
    .registers 3

    const-string v0, "oaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->b:Lcom/tencent/turingfd/sdk/ams/ad/if;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "vaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->d:Lcom/tencent/turingfd/sdk/ams/ad/if;

    goto :goto_a

    :cond_16
    const-string v0, "aaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->c:Lcom/tencent/turingfd/sdk/ams/ad/if;

    goto :goto_a

    :cond_21
    const-string v0, "udid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->a:Lcom/tencent/turingfd/sdk/ams/ad/if;

    goto :goto_a

    :cond_2c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final declared-synchronized g(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->f:Landroid/content/BroadcastReceiver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/new;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/new;-><init>()V

    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/try;->f:Landroid/content/BroadcastReceiver;

    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_5

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
