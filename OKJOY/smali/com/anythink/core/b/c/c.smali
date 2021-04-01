.class public final Lcom/anythink/core/b/c/c;
.super Lcom/anythink/core/b/c/h;


# instance fields
.field public a:I

.field public b:Lcom/anythink/core/b/c/n;

.field public c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/anythink/core/b/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 11
    iget-object v0, p0, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    iget v1, p0, Lcom/anythink/core/b/c/c;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/n;->q(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 13
    if-eqz v1, :cond_11

    .line 14
    :try_start_a
    const-string v0, "sdk_time"

    iget-wide v2, p0, Lcom/anythink/core/b/c/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    .line 20
    :cond_11
    :goto_11
    return-object v1

    .line 17
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
