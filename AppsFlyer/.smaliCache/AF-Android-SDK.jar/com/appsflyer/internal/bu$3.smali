.class final Lcom/appsflyer/internal/bu$3;
.super Lcom/appsflyer/internal/av;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/bu;->AFInAppEventType(Landroid/content/Context;)V
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
.field private synthetic valueOf:Lcom/appsflyer/internal/bu;


# direct methods
.method varargs constructor <init>(Lcom/appsflyer/internal/bu;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 43
    iput-object p1, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/av;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 88
    :cond_8
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 89
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_13

    return-void

    .line 90
    :cond_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private AFKeystoreWrapper()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "response"

    .line 48
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_b5

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 55
    iget-object v3, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "OK"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "referrer"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 57
    const-string v3, "click_ts"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 58
    const-string v3, "install_begin_ts"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 59
    const-string v3, "install_end_ts"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 60
    const-string v3, "organic_keywords"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 61
    const-string v3, "attr_type"

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/bu$3;->AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v4, "instant"

    .line 1104
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1105
    const/4 v6, -0x1

    if-eq v5, v6, :cond_8e

    .line 1106
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1107
    if-eqz v5, :cond_8e

    .line 1108
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_8e
    const-string v4, "click_server_ts"

    invoke-static {v4, v3, v2}, Lcom/appsflyer/internal/bu$3;->AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 65
    const-string v4, "install_begin_server_ts"

    invoke-static {v4, v3, v2}, Lcom/appsflyer/internal/bu$3;->AFInAppEventParameterName(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 66
    const-string v4, "install_version"

    invoke-static {v4, v3, v2}, Lcom/appsflyer/internal/bu$3;->AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V

    .line 67
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "custom"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    .line 68
    :cond_ad
    iget-object v3, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    :goto_b4
    goto :goto_be

    .line 69
    :cond_b5
    iget-object v3, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v3, v3, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "SERVICE_UNAVAILABLE"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_be} :catch_c3
    .catchall {:try_start_5 .. :try_end_be} :catchall_c1

    .line 74
    :goto_be
    if-eqz v2, :cond_d8

    goto :goto_d5

    :catchall_c1
    move-exception v0

    goto :goto_114

    .line 70
    :catch_c3
    move-exception v3

    .line 71
    :try_start_c4
    iget-object v4, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    nop

    .line 2067
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_c1

    .line 74
    if-eqz v2, :cond_d8

    :goto_d5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_d8
    iget-object v0, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Ljava/lang/String;

    const/16 v2, 0x80

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v1, v1, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "api_ver"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v1, v1, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/ac;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "api_ver_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    invoke-virtual {v0}, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper()V

    .line 82
    iget-object v0, p0, Lcom/appsflyer/internal/bu$3;->valueOf:Lcom/appsflyer/internal/bu;

    iget-object v0, v0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    return-object v0

    .line 74
    :goto_114
    if-eqz v2, :cond_119

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_119
    throw v0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Landroid/database/Cursor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 96
    :cond_8
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 97
    if-nez p2, :cond_f

    return-void

    .line 98
    :cond_f
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method


# virtual methods
.method public final synthetic valueOf()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/appsflyer/internal/bu$3;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
