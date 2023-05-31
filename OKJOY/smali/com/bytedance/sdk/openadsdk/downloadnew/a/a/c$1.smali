.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;
.super Lcom/bytedance/sdk/adnet/b/j;
.source "LibNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/a/a/a/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;->d:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;->c:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    return-void
.end method


# virtual methods
.method protected c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c$1;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 53
    :cond_2b
    return-object v1
.end method
