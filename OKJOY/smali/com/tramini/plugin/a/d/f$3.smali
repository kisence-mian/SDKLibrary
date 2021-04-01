.class final Lcom/tramini/plugin/a/d/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tramini/plugin/a/d/f$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/d/f$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/d/f$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 280
    instance-of v0, p1, Ljava/util/Map;

    return v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 6

    .prologue
    .line 286
    :try_start_0
    check-cast p1, Ljava/util/Map;

    .line 288
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 289
    :cond_a
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    .line 323
    :goto_e
    return-object v0

    .line 292
    :cond_f
    iget-object v0, p0, Lcom/tramini/plugin/a/d/f$3;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 293
    iget-object v0, p0, Lcom/tramini/plugin/a/d/f$3;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    if-nez v0, :cond_24

    .line 296
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 299
    :cond_24
    iget-object v1, p0, Lcom/tramini/plugin/a/d/f$3;->b:Ljava/lang/String;

    const-string v2, ""

    new-instance v3, Lcom/tramini/plugin/a/d/f$3$1;

    invoke-direct {v3, p0}, Lcom/tramini/plugin/a/d/f$3$1;-><init>(Lcom/tramini/plugin/a/d/f$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/d/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_3e

    .line 316
    invoke-static {v0}, Lcom/tramini/plugin/a/d/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 319
    :cond_38
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_e

    :catch_3d
    move-exception v0

    .line 323
    :cond_3e
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e
.end method
