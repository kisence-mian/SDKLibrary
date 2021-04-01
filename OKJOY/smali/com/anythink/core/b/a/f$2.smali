.class final Lcom/anythink/core/b/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/f;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/NetTrafficeCallback;

.field final synthetic b:Lcom/anythink/core/b/a/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/f;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 3

    .prologue
    .line 173
    iput-object p1, p0, Lcom/anythink/core/b/a/f$2;->b:Lcom/anythink/core/b/a/f;

    iput-object p2, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 181
    if-nez p1, :cond_f

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v1, :cond_e

    .line 183
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    const-string v2, "There is no result."

    invoke-interface {v1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 215
    :cond_e
    :goto_e
    return-void

    .line 189
    :cond_f
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 191
    const-string v2, "is_eu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 192
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v1, :cond_e

    .line 193
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    const-string v2, "There is no result."

    invoke-interface {v1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_e

    .line 210
    :catch_27
    move-exception v1

    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v1, :cond_e

    .line 211
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    const-string v2, "Internal error"

    invoke-interface {v1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    goto :goto_e

    .line 198
    :cond_34
    :try_start_34
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "is_eu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    if-ne v1, v3, :cond_49

    .line 201
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v1, :cond_e

    .line 202
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    goto :goto_e

    .line 205
    :cond_49
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v1, :cond_e

    .line 206
    iget-object v1, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_53} :catch_27

    goto :goto_e
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/anythink/core/b/a/f$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 222
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method
