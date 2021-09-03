.class final Lcom/tds/tapdb/sdk/TapDB$k;
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

.field final synthetic b:Lcom/tds/tapdb/sdk/TapDB;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tds/tapdb/sdk/TapDB;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$k;->b:Lcom/tds/tapdb/sdk/TapDB;

    iput-object p3, p0, Lcom/tds/tapdb/sdk/TapDB$k;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->getTapTapDID(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$k;->b:Lcom/tds/tapdb/sdk/TapDB;

    sget-object v1, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;

    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDB$k;->c:Lorg/json/JSONObject;

    const-string v3, "identify"

    const-string v4, "device_login"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
