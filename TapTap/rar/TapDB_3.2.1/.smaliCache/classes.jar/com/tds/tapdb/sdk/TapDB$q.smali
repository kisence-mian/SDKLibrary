.class final Lcom/tds/tapdb/sdk/TapDB$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$q;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->getTapTapDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_3f

    if-nez v1, :cond_3b

    const-string v1, "current_tap_did"

    :try_start_1d
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_3f

    const-string v2, "current_tap_did_source"

    if-nez v1, :cond_38

    :try_start_30
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->b()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    :cond_38
    const-string v1, "defualt"

    goto :goto_34

    :cond_3b
    :goto_3b
    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->deviceUpdate(Lorg/json/JSONObject;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception v0

    const-string v0, "deviceInitialize report fail"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->c(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method
