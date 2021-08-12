.class public Lcom/ss/android/downloadlib/addownload/m;
.super Ljava/lang/Object;
.source "ReverseWifiHelper.java"


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public static a()Lcom/ss/android/downloadlib/addownload/a/c;
    .registers 1

    .line 30
    sget-object v0, Lcom/ss/android/downloadlib/addownload/m;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object v0
.end method

.method public static a(Lcom/ss/android/downloadlib/addownload/a/c;)V
    .registers 1

    .line 34
    sput-object p0, Lcom/ss/android/downloadlib/addownload/m;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    .line 35
    return-void
.end method

.method public static a(I)Z
    .registers 3

    .line 100
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v1, 0x2

    if-eq p0, v1, :cond_18

    const/4 v1, 0x3

    if-eq p0, v1, :cond_18

    const/4 v1, 0x4

    if-eq p0, v1, :cond_18

    const/4 v1, 0x5

    if-eq p0, v1, :cond_18

    const/4 v1, 0x7

    if-eq p0, v1, :cond_18

    const/16 v1, 0x8

    if-ne p0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .registers 11

    .line 38
    const/4 v0, 0x0

    if-eqz p0, :cond_6a

    if-nez p1, :cond_6

    goto :goto_6a

    .line 42
    :cond_6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 43
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v2

    .line 44
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const/4 v4, 0x1

    :try_start_14
    const-string v5, "switch_status"

    if-eqz v2, :cond_1a

    move v6, v4

    goto :goto_1b

    :cond_1a
    move v6, v0

    :goto_1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_23

    .line 49
    goto :goto_27

    .line 47
    :catch_23
    move-exception v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :goto_27
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v5

    const-string v6, "pause_reserve_wifi_switch_status"

    invoke-virtual {v5, v6, v3, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 51
    if-nez v2, :cond_33

    .line 52
    return v0

    .line 55
    :cond_33
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/m;->a(I)Z

    move-result p2

    if-nez p2, :cond_3a

    .line 56
    return v0

    .line 58
    :cond_3a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result p2

    .line 59
    if-eqz p2, :cond_57

    .line 61
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 62
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 63
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string p2, "pause_reserve_wifi_cancel_on_wifi"

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_69

    .line 65
    :cond_57
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->hasPauseReservedOnWifi()Z

    move-result p1

    if-nez p1, :cond_69

    .line 67
    new-instance p1, Lcom/ss/android/downloadlib/addownload/m$1;

    invoke-direct {p1, v1, p0, p3}, Lcom/ss/android/downloadlib/addownload/m$1;-><init>(ILcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/d/c;)V

    .line 92
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/m;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 93
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Lcom/ss/android/downloadad/a/b/a;)V

    .line 94
    return v4

    .line 96
    :cond_69
    :goto_69
    return v0

    .line 39
    :cond_6a
    :goto_6a
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 40
    return v0
.end method
