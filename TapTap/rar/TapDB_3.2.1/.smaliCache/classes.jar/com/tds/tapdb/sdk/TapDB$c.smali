.class final Lcom/tds/tapdb/sdk/TapDB$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->userUpdate(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v0

    sget-object v1, Lcom/tds/tapdb/b/e;->h:Lcom/tds/tapdb/b/e;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_f

    const-string v2, "event"

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/tds/tapdb/sdk/TapDB$c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_13
    return-void
.end method
