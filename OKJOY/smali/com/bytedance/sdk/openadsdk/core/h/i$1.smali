.class Lcom/bytedance/sdk/openadsdk/core/h/i$1;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/n$a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/i;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 245
    if-eqz p1, :cond_d3

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_d3

    .line 246
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "cypher"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 248
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 249
    if-ne v1, v4, :cond_8b

    .line 251
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 255
    :try_start_31
    const-string v1, "SdkSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_52} :catch_82

    move-object v0, v1

    :cond_53
    :goto_53
    move-object v1, v0

    .line 276
    :goto_54
    :try_start_54
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-nez v0, :cond_ce

    move-object v0, v2

    .line 277
    :goto_59
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5e} :catch_e1

    .line 282
    :goto_5e
    :try_start_5e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->f()Z

    move-result v0

    if-nez v0, :cond_68

    .line 283
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Z)Z

    .line 285
    :cond_68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Lorg/json/JSONObject;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_71} :catch_df

    .line 288
    :goto_71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/a;->b()V

    .line 289
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 290
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->b()V

    .line 299
    :cond_81
    :goto_81
    return-void

    .line 257
    :catch_82
    move-exception v1

    .line 258
    const-string v4, "SdkSettingsHelper"

    const-string v5, "setting data error: "

    invoke-static {v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 261
    :cond_8b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_e4

    .line 262
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 266
    :try_start_a2
    const-string v1, "SdkSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting data1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_c3} :catch_c4

    goto :goto_54

    .line 268
    :catch_c4
    move-exception v1

    .line 269
    const-string v4, "SdkSettingsHelper"

    const-string v5, "setting data error2: "

    invoke-static {v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cc
    move-object v1, v0

    goto :goto_54

    .line 276
    :cond_ce
    :try_start_ce
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d2} :catch_e1

    goto :goto_59

    .line 296
    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_dc} :catch_dd

    goto :goto_81

    .line 297
    :catch_dd
    move-exception v0

    goto :goto_81

    .line 286
    :catch_df
    move-exception v0

    goto :goto_71

    .line 278
    :catch_e1
    move-exception v0

    goto/16 :goto_5e

    :cond_e4
    move-object v1, v0

    move-object v3, v2

    goto/16 :goto_54
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 307
    :goto_9
    return-void

    .line 305
    :catch_a
    move-exception v0

    goto :goto_9
.end method
