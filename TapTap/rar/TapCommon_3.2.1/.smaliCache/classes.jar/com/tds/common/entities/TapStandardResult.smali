.class public Lcom/tds/common/entities/TapStandardResult;
.super Ljava/lang/Object;
.source "TapStandardResult.java"


# instance fields
.field public final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "msg"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/entities/TapStandardResult;->msg:Ljava/lang/String;

    .line 11
    return-void
.end method
