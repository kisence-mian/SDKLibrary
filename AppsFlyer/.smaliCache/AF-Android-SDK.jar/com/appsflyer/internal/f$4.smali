.class final Lcom/appsflyer/internal/f$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/f;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/f;

.field private synthetic AFInAppEventType:Ljava/util/Map;

.field private synthetic valueOf:Landroid/content/Context;

.field private synthetic values:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/f;Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V
    .registers 5

    .line 102
    iput-object p1, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventParameterName:Lcom/appsflyer/internal/f;

    iput-object p2, p0, Lcom/appsflyer/internal/f$4;->values:Landroid/net/Uri;

    iput-object p3, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventType:Ljava/util/Map;

    iput-object p4, p0, Lcom/appsflyer/internal/f$4;->valueOf:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static valueOf(Landroid/net/Uri;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ESP deeplink resolving is started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 144
    sget v1, Lcom/appsflyer/internal/f;->values:I

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 145
    sget v1, Lcom/appsflyer/internal/f;->values:I

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 146
    const-string v1, "User-agent"

    const-string v2, "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "af-esp"

    const-string v2, "6.3.0"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 149
    const-string v2, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v2, 0x12c

    if-gt v2, v1, :cond_66

    const/16 v2, 0x131

    if-gt v1, v2, :cond_66

    .line 151
    const-string v1, "res"

    const-string v2, "Location"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_66
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 153
    const-string p0, "ESP deeplink resolving is finished"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6f

    .line 157
    goto :goto_80

    .line 154
    :catchall_6f
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :goto_80
    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/appsflyer/internal/f$4;->values:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    nop

    .line 112
    nop

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :goto_15
    const/4 v8, 0x5

    if-ge v7, v8, :cond_51

    .line 115
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/f$4;->valueOf(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    .line 116
    const-string v5, "res"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    const-string v6, "status"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 118
    const-string v8, "error"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    if-eqz v5, :cond_4d

    invoke-static {v5}, Lcom/appsflyer/internal/f;->valueOf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 120
    const/4 v8, 0x4

    if-ge v7, v8, :cond_46

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_46
    add-int/lit8 v7, v7, 0x1

    move-object v10, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v10

    goto :goto_15

    .line 123
    :cond_4d
    move-object v10, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v10

    :cond_51
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string v8, "res"

    if-eqz v2, :cond_5c

    move-object v9, v2

    goto :goto_5e

    :cond_5c
    const-string v9, ""

    :goto_5e
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v8, "status"

    if-eqz v5, :cond_6a

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_6b

    :cond_6a
    const/4 v5, -0x1

    :goto_6b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    if-eqz v6, :cond_79

    const-string v5, "error"

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_79
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_84

    const-string v5, "redirects"

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_84
    const-string v3, "latency"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventType:Ljava/util/Map;

    monitor-enter v0

    .line 130
    :try_start_95
    iget-object v1, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "af_deeplink_r"

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "af_deeplink"

    iget-object v5, p0, Lcom/appsflyer/internal/f$4;->values:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_95 .. :try_end_aa} :catchall_c1

    .line 133
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/f$4;->valueOf:Landroid/content/Context;

    iget-object v3, p0, Lcom/appsflyer/internal/f$4;->AFInAppEventType:Ljava/util/Map;

    if-eqz v2, :cond_b9

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_bb

    :cond_b9
    iget-object v2, p0, Lcom/appsflyer/internal/f$4;->values:Landroid/net/Uri;

    :goto_bb
    invoke-virtual {v0, v1, v3, v2}, Lcom/appsflyer/internal/af;->valueOf(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 135
    sput-boolean v4, Lcom/appsflyer/internal/f;->valueOf:Z

    .line 136
    return-void

    .line 132
    :catchall_c1
    move-exception v1

    monitor-exit v0

    goto :goto_c5

    :goto_c4
    throw v1

    :goto_c5
    goto :goto_c4
.end method
