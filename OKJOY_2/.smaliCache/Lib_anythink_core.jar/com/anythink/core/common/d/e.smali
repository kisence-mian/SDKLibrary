.class public final Lcom/anythink/core/common/d/e;
.super Lcom/anythink/core/common/d/o;


# instance fields
.field public a:I

.field public b:Lcom/anythink/core/common/d/aa;

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/anythink/core/common/d/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    iget v1, p0, Lcom/anythink/core/common/d/e;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/aa;->r(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_17

    .line 21
    :try_start_a
    const-string v1, "sdk_time"

    iget-wide v2, p0, Lcom/anythink/core/common/d/e;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_17

    .line 24
    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 25
    :cond_17
    :goto_17
    nop

    .line 27
    :goto_18
    return-object v0
.end method
