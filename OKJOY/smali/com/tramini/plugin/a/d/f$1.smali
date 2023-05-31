.class final Lcom/tramini/plugin/a/d/f$1;
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

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tramini/plugin/a/d/f$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/d/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 213
    instance-of v0, p1, Ljava/util/Map;

    return v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 5

    .prologue
    .line 218
    check-cast p1, Ljava/util/Map;

    .line 220
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 221
    :cond_a
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    .line 235
    :goto_e
    return-object v0

    .line 224
    :cond_f
    iget-object v0, p0, Lcom/tramini/plugin/a/d/f$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 225
    iget-object v0, p0, Lcom/tramini/plugin/a/d/f$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    if-nez v0, :cond_24

    .line 227
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 229
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/d/f$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 230
    invoke-static {v0}, Lcom/tramini/plugin/a/d/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 232
    :cond_39
    invoke-static {v0}, Lcom/tramini/plugin/a/d/e$a;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 235
    :cond_3e
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e
.end method
