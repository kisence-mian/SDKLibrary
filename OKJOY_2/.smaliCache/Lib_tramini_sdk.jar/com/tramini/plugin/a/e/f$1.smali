.class final Lcom/tramini/plugin/a/e/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/e/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 218
    iput-object p1, p0, Lcom/tramini/plugin/a/e/f$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/e/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    .line 221
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;
    .registers 4

    .line 226
    check-cast p1, Ljava/util/Map;

    .line 228
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3f

    .line 232
    :cond_b
    iget-object v0, p0, Lcom/tramini/plugin/a/e/f$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 233
    iget-object v0, p0, Lcom/tramini/plugin/a/e/f$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 234
    if-nez p1, :cond_20

    .line 235
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 237
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/e/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 238
    invoke-static {p1}, Lcom/tramini/plugin/a/e/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 240
    :cond_35
    invoke-static {p1}, Lcom/tramini/plugin/a/e/e$a;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 243
    :cond_3a
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 229
    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1
.end method
