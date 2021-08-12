.class public final Lcom/tramini/plugin/a/g/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tramini/plugin/b/a;)Ljava/lang/String;
    .registers 5

    .line 20
    invoke-virtual {p0}, Lcom/tramini/plugin/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    .line 21
    if-eqz p0, :cond_3c

    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tramini/plugin/a/c/c;

    .line 25
    if-eqz v2, :cond_3b

    iget-object v3, v2, Lcom/tramini/plugin/a/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v2, v2, Lcom/tramini/plugin/a/c/c;->a:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 26
    return-object v1

    .line 29
    :cond_3b
    goto :goto_e

    .line 31
    :cond_3c
    const-string p0, ""

    return-object p0
.end method
