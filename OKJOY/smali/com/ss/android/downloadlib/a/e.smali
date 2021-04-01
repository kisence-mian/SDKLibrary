.class public Lcom/ss/android/downloadlib/a/e;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/e$a;,
        Lcom/ss/android/downloadlib/a/e$b;,
        Lcom/ss/android/downloadlib/a/e$c;
    }
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/a/e$b;


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 65
    if-eqz p0, :cond_17

    const-string v0, "download_chunk_config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "download_chunk_config"

    .line 66
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 67
    invoke-static {p0}, Lcom/ss/android/downloadlib/a/e;->c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    .line 69
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/ss/android/downloadlib/a/e;->a:Lcom/ss/android/downloadlib/a/e$b;

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Lcom/ss/android/downloadlib/a/e$b;

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/e$b;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/downloadlib/a/e;->a:Lcom/ss/android/downloadlib/a/e$b;

    .line 46
    :cond_f
    new-instance v0, Lcom/ss/android/downloadlib/a/e$a;

    sget-object v1, Lcom/ss/android/downloadlib/a/e;->a:Lcom/ss/android/downloadlib/a/e$b;

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/a/e$a;-><init>(Lcom/ss/android/downloadlib/a/e$b;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 3

    .prologue
    .line 57
    if-eqz p1, :cond_17

    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "download_chunk_config"

    .line 58
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 59
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/e;->b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    .line 61
    :goto_16
    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/ss/android/downloadlib/a/e;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    goto :goto_16
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/ss/android/downloadlib/a/e$b;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/e$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/ss/android/downloadlib/a/e$c;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/e$c;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
