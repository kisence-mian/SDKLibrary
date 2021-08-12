.class final Lcom/anythink/core/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b;->a(Landroid/content/Context;Lcom/anythink/core/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/c/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/b;Lcom/anythink/core/c/a;Landroid/content/Context;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/anythink/core/c/b$2;->c:Lcom/anythink/core/c/b;

    iput-object p2, p0, Lcom/anythink/core/c/b$2;->a:Lcom/anythink/core/c/a;

    iput-object p3, p0, Lcom/anythink/core/c/b$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 246
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/anythink/core/c/b$2;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 255
    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_61

    .line 256
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 258
    const-string v5, "content"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 263
    invoke-static {v5}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 264
    const-string v6, "adapter"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 268
    move v7, v2

    :goto_32
    if-ge v7, v6, :cond_5e

    .line 269
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_62

    .line 272
    :try_start_38
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 273
    const-string v9, "getInstance"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 274
    const/4 v9, 0x0

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 276
    instance-of v9, v8, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v9, :cond_56

    .line 277
    check-cast v8, Lcom/anythink/core/api/ATInitMediation;

    iget-object v9, p0, Lcom/anythink/core/c/b$2;->b:Landroid/content/Context;

    invoke-virtual {v8, v9, v5}, Lcom/anythink/core/api/ATInitMediation;->initSDK(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_57

    .line 281
    :cond_56
    goto :goto_5b

    .line 280
    :catchall_57
    move-exception v8

    :try_start_58
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_62

    .line 268
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 255
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 286
    :cond_61
    return-void

    .line 285
    :catchall_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    return-void
.end method
