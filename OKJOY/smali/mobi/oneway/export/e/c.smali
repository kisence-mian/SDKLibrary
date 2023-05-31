.class public Lmobi/oneway/export/e/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/e/c;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stack"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "publishId"

    invoke-static {}, Lmobi/oneway/export/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bundleId"

    invoke-static {}, Lmobi/oneway/export/h/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkVersion"

    const-string v3, "2.4.2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "apiLevel"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "imei"

    invoke-static {}, Lmobi/oneway/export/h/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceMake"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceModel"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "osVersion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "zc"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "zm"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lmobi/oneway/export/e/c;

    invoke-direct {v1, v0}, Lmobi/oneway/export/e/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lmobi/oneway/export/e/c;->start()V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_77} :catch_78

    :goto_77
    return-void

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_77
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_3
    new-instance v0, Lmobi/oneway/export/g/f;

    const-string v1, "http://ads.oneway.mobi/diagnosis"

    invoke-direct {v0, v1}, Lmobi/oneway/export/g/f;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/oneway/export/e/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/g/f;->a(Lorg/json/JSONObject;)Lmobi/oneway/export/g/f;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lmobi/oneway/export/g/f;->c(Ljava/lang/String;)Lmobi/oneway/export/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/g/f;->n()Lmobi/oneway/export/g/b;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method
