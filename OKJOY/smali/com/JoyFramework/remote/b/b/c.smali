.class public Lcom/JoyFramework/remote/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/JoyFramework/remote/b/b/c;->a:Lcom/google/gson/TypeAdapter;

    .line 26
    iput-object p1, p0, Lcom/JoyFramework/remote/b/b/c;->b:Lcom/google/gson/Gson;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 31
    iget-object v0, p0, Lcom/JoyFramework/remote/b/b/c;->b:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 33
    const/4 v0, 0x0

    .line 35
    :try_start_f
    iget-object v2, p0, Lcom/JoyFramework/remote/b/b/c;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_14
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_f .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_4b
    .catchall {:try_start_f .. :try_end_14} :catchall_56

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 48
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 49
    :goto_1b
    return-object v0

    .line 36
    :catch_1c
    move-exception v2

    .line 37
    :try_start_1d
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/JoyFramework/remote/b/b/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 39
    iget-object v2, p0, Lcom/JoyFramework/remote/b/b/c;->b:Lcom/google/gson/Gson;

    new-instance v3, Ljava/io/StringReader;

    const-string v4, "{\"Result\": false, \"Msg\": \"unknown error:3\",\"Data\":null}"

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v1

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 41
    iget-object v2, p0, Lcom/JoyFramework/remote/b/b/c;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_56

    move-result-object v0

    .line 47
    :cond_44
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 48
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    goto :goto_1b

    .line 43
    :catch_4b
    move-exception v2

    .line 44
    :try_start_4c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_56

    .line 47
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 48
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    goto :goto_1b

    .line 47
    :catchall_56
    move-exception v2

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 48
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    goto :goto_1b
.end method

.method public a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 55
    if-nez p1, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 67
    :goto_3
    return-object v0

    .line 59
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const/16 v1, 0x3e8

    new-array v1, v1, [C

    .line 61
    :goto_d
    invoke-virtual {p1}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2b

    goto :goto_d

    .line 66
    :catch_1c
    move-exception v0

    .line 67
    :try_start_1d
    const-string v0, "{ \"Result\":false,\"Msg\":\"unknown error:2\", \"Data\":null}"
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2b

    .line 69
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_3

    .line 65
    :cond_23
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_1c
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_3

    :catchall_2b
    move-exception v0

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/remote/b/b/c;->a(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
