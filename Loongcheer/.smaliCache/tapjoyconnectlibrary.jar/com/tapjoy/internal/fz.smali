.class public final Lcom/tapjoy/internal/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/tapjoy/TapjoyURLConnection;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tapjoy/internal/fz;->a:Ljava/lang/String;

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fz;->e:Ljava/util/Map;

    .line 30
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/tapjoy/internal/fz;->e:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_10

    .line 35
    :cond_26
    const-string p1, "show"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/fz;->b:Ljava/lang/String;

    .line 36
    const-string p1, "error"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/fz;->c:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {p1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fz;->d:Lcom/tapjoy/TapjoyURLConnection;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/tapjoy/internal/fz;->f:Z

    if-nez v0, :cond_1e

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/fz;->f:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/fz;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 47
    new-instance v1, Lcom/tapjoy/internal/fz$1;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/fz$1;-><init>(Lcom/tapjoy/internal/fz;Ljava/util/Map;)V

    .line 53
    invoke-virtual {v1}, Lcom/tapjoy/internal/fz$1;->start()V

    .line 55
    :cond_1e
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 59
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/fz;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 60
    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance p1, Lcom/tapjoy/internal/fz$2;

    invoke-direct {p1, p0, v0}, Lcom/tapjoy/internal/fz$2;-><init>(Lcom/tapjoy/internal/fz;Ljava/util/Map;)V

    .line 66
    invoke-virtual {p1}, Lcom/tapjoy/internal/fz$2;->start()V

    .line 68
    :cond_1c
    return-void
.end method
