.class final Lcom/anythink/core/common/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/h;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/NetTrafficeCallback;

.field final synthetic b:Lcom/anythink/core/common/b/h;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/h;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/anythink/core/common/b/h$2;->b:Lcom/anythink/core/common/b/h;

    iput-object p2, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 186
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    .line 191
    const-string v0, "is_eu"

    const-string v1, "There is no result."

    if-nez p1, :cond_e

    .line 192
    :try_start_6
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_d

    .line 193
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 196
    :cond_d
    return-void

    .line 199
    :cond_e
    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 202
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_1e

    .line 203
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 205
    :cond_1e
    return-void

    .line 208
    :cond_1f
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 210
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 211
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_38

    .line 212
    invoke-interface {p1, v0}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    .line 215
    :cond_30
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_38

    .line 216
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    .line 223
    :cond_38
    return-void

    .line 219
    :catchall_39
    move-exception p1

    .line 220
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_43

    .line 221
    const-string v0, "Internal error"

    invoke-interface {p1, v0}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 225
    :cond_43
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 229
    iget-object p1, p0, Lcom/anythink/core/common/b/h$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_b

    .line 230
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    .line 232
    :cond_b
    return-void
.end method

.method public final b()V
    .registers 1

    .line 236
    return-void
.end method
