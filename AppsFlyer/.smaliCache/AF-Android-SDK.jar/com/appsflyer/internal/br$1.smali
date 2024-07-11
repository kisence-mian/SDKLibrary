.class final Lcom/appsflyer/internal/br$1;
.super Lcom/appsflyer/internal/av;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/br;->AFInAppEventType(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/av<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/br;


# direct methods
.method varargs constructor <init>(Lcom/appsflyer/internal/br;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 36
    iput-object p1, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/av;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private values()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "response"

    iget-object v2, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Ljava/lang/String;

    .line 40
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "api_ver"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/internal/ac;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "api_ver_name"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    nop

    .line 46
    const/4 v2, 0x0

    :try_start_38
    iget-object v3, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/item/5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    iget-object v9, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    .line 50
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    .line 46
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_f2

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 54
    iget-object v4, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "OK"

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v4, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "referrer"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v4, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "click_ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "install_end_ts"

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_fb

    .line 59
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "install_begin_ts"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    if-eqz v4, :cond_d6

    const-string v5, "track_id"

    invoke-virtual {v3, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_d6
    const-string v4, "referrer_ex"

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "huawei_custom"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_fb

    .line 67
    :cond_ea
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    .line 70
    :cond_f2
    iget-object v3, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "SERVICE_UNAVAILABLE"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_fb} :catch_100
    .catchall {:try_start_38 .. :try_end_fb} :catchall_fe

    .line 76
    :cond_fb
    :goto_fb
    if-eqz v2, :cond_115

    goto :goto_112

    :catchall_fe
    move-exception v0

    goto :goto_11f

    .line 72
    :catch_100
    move-exception v3

    .line 73
    :try_start_101
    iget-object v4, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    nop

    .line 1067
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_fe

    .line 76
    if-eqz v2, :cond_115

    :goto_112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_115
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    invoke-virtual {v0}, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper()V

    .line 79
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->valueOf:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    return-object v0

    .line 76
    :goto_11f
    if-eqz v2, :cond_124

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_124
    throw v0
.end method


# virtual methods
.method public final synthetic valueOf()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/appsflyer/internal/br$1;->values()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
