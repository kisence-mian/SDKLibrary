.class public Lcom/bytedance/applog/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)V
    .registers 6

    .prologue
    .line 11
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    const-string v1, "bav2b_sdk_init_cost"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_15

    .line 17
    :goto_14
    return-void

    .line 14
    :catch_15
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14
.end method
