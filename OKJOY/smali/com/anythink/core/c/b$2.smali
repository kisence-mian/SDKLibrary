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

    .prologue
    .line 234
    iput-object p1, p0, Lcom/anythink/core/c/b$2;->c:Lcom/anythink/core/c/b;

    iput-object p2, p0, Lcom/anythink/core/c/b$2;->a:Lcom/anythink/core/c/a;

    iput-object p3, p0, Lcom/anythink/core/c/b$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 238
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/anythink/core/c/b$2;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v2

    .line 247
    :goto_11
    if-ge v3, v5, :cond_65

    .line 248
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 254
    invoke-static {v1}, Lcom/anythink/core/c/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 255
    const-string v1, "adapter"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 257
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v1, v2

    .line 259
    :goto_32
    if-ge v1, v8, :cond_66

    .line 260
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_61

    move-result-object v0

    .line 263
    :try_start_38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 264
    const-string v9, "getInstance"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 265
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    instance-of v9, v0, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v9, :cond_58

    .line 268
    check-cast v0, Lcom/anythink/core/api/ATInitMediation;

    iget-object v9, p0, Lcom/anythink/core/c/b$2;->b:Landroid/content/Context;

    invoke-virtual {v0, v9, v6}, Lcom/anythink/core/api/ATInitMediation;->initSDK(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_58} :catch_5c

    .line 259
    :cond_58
    :goto_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 271
    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_58

    .line 276
    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    :cond_65
    return-void

    .line 247
    :cond_66
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11
.end method
