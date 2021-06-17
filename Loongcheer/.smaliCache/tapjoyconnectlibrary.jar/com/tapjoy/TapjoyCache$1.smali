.class final Lcom/tapjoy/TapjoyCache$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/tapjoy/TJCacheListener;

.field final synthetic c:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    .registers 4

    .line 171
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$1;->c:Lcom/tapjoy/TapjoyCache;

    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$1;->b:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 173
    const-string v0, "Caching thread failed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting to cache asset group size of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapjoyCache"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    nop

    .line 179
    const/4 v3, 0x0

    :goto_23
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 183
    :try_start_2b
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 184
    iget-object v5, p0, Lcom/tapjoy/TapjoyCache$1;->c:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v5, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_3c

    .line 186
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_3c} :catch_3d

    .line 190
    :cond_3c
    goto :goto_43

    .line 188
    :catch_3d
    move-exception v4

    .line 189
    const-string v4, "Failed to load JSON object from JSONArray"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 194
    :cond_46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 196
    :try_start_58
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_62} :catch_7e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_58 .. :try_end_62} :catch_66

    if-nez v5, :cond_65

    .line 197
    const/4 v3, 0x2

    .line 205
    :cond_65
    goto :goto_4c

    .line 202
    :catch_66
    move-exception v3

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    nop

    .line 206
    const/4 v3, 0x2

    goto :goto_4c

    .line 199
    :catch_7e
    move-exception v3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    nop

    .line 205
    const/4 v3, 0x2

    goto :goto_4c

    .line 208
    :cond_96
    const-string v0, "Finished caching group"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$1;->b:Lcom/tapjoy/TJCacheListener;

    if-eqz v0, :cond_a2

    .line 210
    invoke-interface {v0, v3}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    .line 212
    :cond_a2
    return-void
.end method
