.class public final Lcom/tapjoy/internal/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/by;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tapjoy/internal/bz;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/tapjoy/internal/bz;->b:Ljava/net/URL;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bv;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/bv<",
            "TResult;>;)TResult;"
        }
    .end annotation

    .line 38
    nop

    .line 1063
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/tapjoy/internal/bz;->b:Ljava/net/URL;

    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->b()Ljava/lang/String;

    move-result-object v1

    .line 1066
    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DELETE"

    if-nez v3, :cond_20

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1067
    :cond_20
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->e()Ljava/util/Map;

    move-result-object v3

    .line 1068
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 1069
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/tapjoy/internal/fl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v5

    .line 1073
    :cond_4f
    invoke-static {v0}, Lcom/tapjoy/internal/fk;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1074
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1076
    iget-object v3, p0, Lcom/tapjoy/internal/bz;->a:Ljava/lang/String;

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1078
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    goto :goto_6b

    .line 1081
    :cond_89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 1083
    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-string v2, "PUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    goto :goto_b6

    .line 1095
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown method: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1084
    :cond_b6
    :goto_b6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->d()Ljava/lang/String;

    move-result-object v1

    .line 1085
    if-nez v1, :cond_cd

    .line 1086
    nop

    .line 1087
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/fl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/jo;->c:Ljava/nio/charset/Charset;

    .line 1086
    const-string v3, "application/x-www-form-urlencoded"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/internal/fl;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    goto :goto_f6

    .line 1088
    :cond_cd
    const-string v2, "application/json"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 1089
    nop

    .line 1090
    invoke-virtual {p1}, Lcom/tapjoy/internal/bv;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/jo;->c:Ljava/nio/charset/Charset;

    .line 1089
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/internal/fl;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    goto :goto_f6

    .line 1092
    :cond_e6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown content type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1098
    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1099
    nop

    .line 38
    nop

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_13c

    .line 45
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :sswitch_11b
    nop

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 53
    :try_start_121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2
    :try_end_129
    .catch Ljava/net/URISyntaxException; {:try_start_121 .. :try_end_129} :catch_12c
    .catchall {:try_start_121 .. :try_end_129} :catchall_12a

    .line 55
    goto :goto_12d

    .line 58
    :catchall_12a
    move-exception p1

    goto :goto_135

    .line 54
    :catch_12c
    move-exception v0

    .line 56
    :goto_12d
    :try_start_12d
    invoke-virtual {p1, v2, v1}, Lcom/tapjoy/internal/bv;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_131
    .catchall {:try_start_12d .. :try_end_131} :catchall_12a

    .line 58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    return-object p1

    .line 58
    :goto_135
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 59
    goto :goto_13a

    :goto_139
    throw p1

    :goto_13a
    goto :goto_139

    nop

    :sswitch_data_13c
    .sparse-switch
        0xc8 -> :sswitch_11b
        0xc9 -> :sswitch_11b
        0x199 -> :sswitch_11b
    .end sparse-switch
.end method
