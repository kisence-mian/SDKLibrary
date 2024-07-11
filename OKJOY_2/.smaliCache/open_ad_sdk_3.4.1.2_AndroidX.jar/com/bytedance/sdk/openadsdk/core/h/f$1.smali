.class Lcom/bytedance/sdk/openadsdk/core/h/f$1;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/f;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 246
    if-eqz p1, :cond_9c

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_9c

    .line 247
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 248
    nop

    .line 249
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 250
    const-string v2, "SdkSettingsHelper"

    const-string v3, "message"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_42

    .line 252
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 256
    :try_start_34
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3b

    .line 259
    move-object v1, v3

    goto :goto_41

    .line 257
    :catchall_3b
    move-exception v3

    .line 258
    const-string v6, "setting data error: "

    invoke-static {v2, v6, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    :cond_41
    :goto_41
    goto :goto_66

    :cond_42
    const/4 v6, 0x2

    if-ne v0, v6, :cond_65

    .line 262
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 266
    :try_start_57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5e

    .line 269
    move-object v1, v3

    goto :goto_66

    .line 267
    :catchall_5e
    move-exception v3

    .line 268
    const-string v6, "setting data error2: "

    invoke-static {v2, v6, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 261
    :cond_65
    move-object v0, v5

    .line 275
    :cond_66
    :goto_66
    :try_start_66
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-nez v2, :cond_6b

    :goto_6a
    goto :goto_70

    :cond_6b
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v5, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    goto :goto_6a

    .line 276
    :goto_70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_76

    .line 278
    goto :goto_77

    .line 277
    :catchall_76
    move-exception p1

    .line 281
    :goto_77
    :try_start_77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->f()Z

    move-result p1

    if-nez p1, :cond_80

    .line 282
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Z)Z

    .line 284
    :cond_80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lorg/json/JSONObject;)V
    :try_end_89
    .catchall {:try_start_77 .. :try_end_89} :catchall_8a

    .line 286
    goto :goto_8b

    .line 285
    :catchall_8a
    move-exception p1

    .line 287
    :goto_8b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a;->b()V

    .line 288
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 289
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b()V

    .line 291
    :cond_9b
    return-void

    .line 295
    :cond_9c
    :try_start_9c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a()V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_a6

    .line 297
    goto :goto_a7

    .line 296
    :catchall_a6
    move-exception p1

    .line 298
    :goto_a7
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 303
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/f;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 305
    goto :goto_b

    .line 304
    :catchall_a
    move-exception p1

    .line 306
    :goto_b
    return-void
.end method
