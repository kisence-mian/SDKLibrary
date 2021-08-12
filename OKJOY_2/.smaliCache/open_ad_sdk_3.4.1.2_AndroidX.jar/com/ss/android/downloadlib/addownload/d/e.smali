.class public Lcom/ss/android/downloadlib/addownload/d/e;
.super Ljava/lang/Object;
.source "MistakeClickInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)J
    .registers 4

    .line 45
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_mistake_click_interval"

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private b(I)Z
    .registers 4

    .line 49
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_mistake_click_interval_switch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .registers 8

    .line 23
    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 24
    return p2

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/addownload/d/e;->b(I)Z

    move-result p3

    if-nez p3, :cond_f

    .line 27
    return p2

    .line 29
    :cond_f
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->S()J

    move-result-wide v0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/addownload/d/e;->a(I)J

    move-result-wide v0

    cmp-long p3, v2, v0

    if-gtz p3, :cond_40

    .line 31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_29
    const-string p3, "pause_optimise_type"

    const-string v0, "mistake_click"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_30} :catch_31

    .line 36
    goto :goto_35

    .line 34
    :catch_31
    move-exception p3

    .line 35
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    :goto_35
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string v0, "pause_optimise"

    invoke-virtual {p3, v0, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 39
    const/4 p1, 0x1

    return p1

    .line 41
    :cond_40
    return p2
.end method
