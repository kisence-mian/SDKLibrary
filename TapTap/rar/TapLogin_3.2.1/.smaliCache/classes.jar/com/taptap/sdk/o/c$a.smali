.class public Lcom/taptap/sdk/o/c$a;
.super Ljava/lang/Object;
.source "CloudGameInitializeFinish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/taptap/sdk/o/c$a;
    .registers 3

    .line 1
    new-instance v0, Lcom/taptap/sdk/o/c$a;

    invoke-direct {v0}, Lcom/taptap/sdk/o/c$a;-><init>()V

    if-eqz p0, :cond_1c

    :try_start_7
    const-string v1, "login"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/o/c$a;->a:Ljava/lang/String;

    const-string v1, "pay"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/o/c$a;->b:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1c

    .line 8
    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_1c
    return-object v0
.end method
