.class public Lcom/kwad/sdk/c/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAOZL22O8FAHpk2edOB7TEnZnR7ZwBKb8pSjUKM1wcasyTZXQjx54agkLtHP73e+mlMcSVyfr1JerBqqv654Yl40CAwEAAQ=="

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/b/c;->b([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->c()Lcom/kwad/sdk/c/b/a$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/c/b/a$b;->a([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-object p0, v0

    :goto_1a
    return-object p0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/c/b/a;->b()Lcom/kwad/sdk/c/b/a$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/b/a$a;->a([B)[B

    move-result-object v0

    const-string v1, "MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEAkheqsdHKexeJgnX9KRJQHKSRtYnjawZLsKWZ1eAOYoRvhujuGMhzFmjqv4Vn1OwSXnB08pqSYxN5TJLp/62RiQIDAQABAkEAjSTKaHQMkPIDi4Sc6xJjTdj9YYvvqNXzSJ4ly0ll/G0KBzju1h6jg82tGlV00X8pfgbr717WQ1VsC5Zob8HfEQIhANMipYdCns2I5xEwb61nYiibFiAvq+CwnVmqzsF9dBE1AiEAsSLQHoM1HlsveJiarrgYLe8Q0Zi06TNlBxDRS1kLPYUCIEko5zygTBCiUJb3NqtaeHvjiV4rxp379PoeIriPNQnFAiAZT+U3hv5PMS6OaBgqgWoLHk9j9BNeA5cbNF8EClxd1QIgBLzxI1lkCJGcWImO4IrbXNYa7P6Rx0sJ5/i65eTwZ8k="

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/b/c;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object p0

    :goto_12
    return-object p0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
