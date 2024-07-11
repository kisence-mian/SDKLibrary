.class public Lcom/ss/android/downloadlib/addownload/b/h;
.super Ljava/lang/Object;
.source "PackageManagerChecker.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/addownload/b/h;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/h;
    .registers 2

    .line 24
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Lcom/ss/android/downloadlib/addownload/b/d;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/h;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b/h;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 31
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    return-object v0
.end method


# virtual methods
.method public a(IILcom/ss/android/downloadad/a/b/b;)V
    .registers 7

    .line 36
    if-nez p3, :cond_3

    .line 37
    return-void

    .line 39
    :cond_3
    invoke-virtual {p3}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    const-string v2, "report_api_hijack"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    .line 41
    return-void

    .line 43
    :cond_15
    sub-int v1, p2, p1

    .line 44
    if-lez p1, :cond_46

    const/16 p1, 0x1f4

    const-string v2, "check_api_hijack_version_code_diff"

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-le v1, p1, :cond_46

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :try_start_28
    const-string v0, "version_code_diff"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string v0, "installed_version_code"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string p2, "hijack_type"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_38} :catch_39

    .line 54
    goto :goto_3d

    .line 52
    :catch_39
    move-exception p2

    .line 53
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    :goto_3d
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    const-string v0, "api_hijack"

    invoke-virtual {p2, v0, p1, p3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 57
    :cond_46
    return-void
.end method
