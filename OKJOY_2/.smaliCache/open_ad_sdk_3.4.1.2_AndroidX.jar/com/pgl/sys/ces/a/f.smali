.class public Lcom/pgl/sys/ces/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/sys/ces/a/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string p0, "[<!>]"

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_5
    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-interface {v2}, Lcom/pgl/sys/ces/out/ISdkInfo;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move-object v3, v0

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    move-object v4, v0

    goto :goto_27

    :cond_23
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_27
    const/16 v5, 0x20

    invoke-virtual {v4, v5, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x27

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x22

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_45

    move-object v2, v0

    goto :goto_49

    :cond_45
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_6c

    move-object v1, p0

    goto :goto_6d

    :catchall_6c
    move-exception p0

    :cond_6d
    :goto_6d
    if-nez v1, :cond_70

    goto :goto_74

    :cond_70
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_74
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "_"

    const-string v1, "\""

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_10

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    :try_start_11
    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-interface {v3}, Lcom/pgl/sys/ces/out/ISdkInfo;->getScanResults()Ljava/util/List;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    move-object v3, p0

    :goto_1d
    if-eqz v3, :cond_6e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_26

    goto :goto_6e

    :cond_26
    new-instance v4, Lcom/pgl/sys/ces/a/f$a;

    invoke-direct {v4}, Lcom/pgl/sys/ces/a/f$a;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    :goto_2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_69

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3a

    goto :goto_69

    :cond_3a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_73

    :try_start_3f
    const-string v6, "ss"

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "bs"

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_64} :catch_65
    .catchall {:try_start_3f .. :try_end_64} :catchall_73

    goto :goto_66

    :catch_65
    move-exception v5

    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_74

    :cond_6e
    :goto_6e
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    return-object p0

    :catchall_73
    move-exception v0

    :goto_74
    if-nez p0, :cond_79

    const-string p0, "[]"

    goto :goto_7d

    :cond_79
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_7d
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string p0, ""

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/pgl/sys/ces/b;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/pgl/sys/ces/out/ISdkInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/pgl/sys/ces/out/ISdkInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    goto :goto_35

    :catchall_34
    move-exception v1

    :cond_35
    :goto_35
    if-nez v0, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_3c
    return-object p0
.end method
