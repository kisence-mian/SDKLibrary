.class final Lcom/tramini/plugin/a/d/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tramini/plugin/a/d/f$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 246
    instance-of v0, p1, Ljava/util/Map;

    return v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 5

    .prologue
    .line 251
    check-cast p1, Ljava/util/Map;

    .line 253
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 254
    :cond_a
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    .line 271
    :goto_e
    return-object v0

    .line 257
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 262
    if-nez v0, :cond_2e

    .line 263
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 265
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/d/f$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 266
    invoke-static {v0}, Lcom/tramini/plugin/a/d/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 268
    :cond_43
    invoke-static {v0}, Lcom/tramini/plugin/a/d/e$a;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 271
    :cond_48
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e
.end method
