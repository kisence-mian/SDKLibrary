.class public Lcom/ss/android/a/a/d/a;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    if-nez p0, :cond_5

    .line 36
    :goto_4
    return-wide v0

    .line 30
    :cond_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :try_start_9
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_4

    .line 34
    :catch_12
    move-exception v2

    goto :goto_4
.end method
