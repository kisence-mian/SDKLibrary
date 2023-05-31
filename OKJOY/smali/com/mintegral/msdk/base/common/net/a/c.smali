.class public abstract Lcom/mintegral/msdk/base/common/net/a/c;
.super Lcom/mintegral/msdk/base/common/net/d;
.source "CommonJSONObjectResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/common/net/d",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/mintegral/msdk/base/common/net/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/d;-><init>()V

    .line 24
    return-void
.end method

.method private e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/c;->a(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 43
    :goto_4
    return-object v0

    .line 41
    :catch_5
    move-exception v0

    .line 42
    sget-object v1, Lcom/mintegral/msdk/base/common/net/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final synthetic b(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/a/c;->e(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
