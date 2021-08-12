.class public Lcom/ss/android/downloadlib/addownload/d;
.super Ljava/lang/Object;
.source "ChunkCalculatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/d$a;,
        Lcom/ss/android/downloadlib/addownload/d$b;,
        Lcom/ss/android/downloadlib/addownload/d$c;
    }
.end annotation


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/d$b;

.field private static b:Lcom/ss/android/downloadlib/addownload/d$c;


# direct methods
.method public static a()Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .line 50
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d;->b:Lcom/ss/android/downloadlib/addownload/d$c;

    if-nez v0, :cond_f

    .line 51
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d$c;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/d$c;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/d;->b:Lcom/ss/android/downloadlib/addownload/d$c;

    .line 53
    :cond_f
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d;->b:Lcom/ss/android/downloadlib/addownload/d$c;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 3

    .line 65
    if-eqz p0, :cond_15

    const-string v0, "download_chunk_config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 66
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 67
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/d;->c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p0

    return-object p0

    .line 69
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 3

    .line 43
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d;->a:Lcom/ss/android/downloadlib/addownload/d$b;

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d$b;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/d$b;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/d;->a:Lcom/ss/android/downloadlib/addownload/d$b;

    .line 46
    :cond_f
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d$a;

    sget-object v1, Lcom/ss/android/downloadlib/addownload/d;->a:Lcom/ss/android/downloadlib/addownload/d$b;

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/addownload/d$a;-><init>(Lcom/ss/android/downloadlib/addownload/d$b;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 4

    .line 57
    if-eqz p1, :cond_15

    const-string v0, "download_chunk_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 58
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 59
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/d;->b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object p0

    return-object p0

    .line 61
    :cond_15
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/d;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .line 73
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d$b;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/d$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .line 77
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d$c;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/d$c;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
