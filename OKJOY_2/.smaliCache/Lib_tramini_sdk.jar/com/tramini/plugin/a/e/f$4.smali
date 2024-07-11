.class final Lcom/tramini/plugin/a/e/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/e/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/StringBuffer;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5

    .line 315
    iput-object p1, p0, Lcom/tramini/plugin/a/e/f$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/e/f$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/e/f$4;->c:Ljava/lang/StringBuffer;

    iput-object p4, p0, Lcom/tramini/plugin/a/e/f$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    .line 318
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;
    .registers 5

    .line 324
    :try_start_0
    check-cast p1, Ljava/util/Map;

    .line 326
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_3a

    .line 330
    :cond_b
    iget-object v0, p0, Lcom/tramini/plugin/a/e/f$4;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 331
    iget-object v0, p0, Lcom/tramini/plugin/a/e/f$4;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 333
    if-nez p1, :cond_20

    .line 334
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 337
    :cond_20
    iget-object v0, p0, Lcom/tramini/plugin/a/e/f$4;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tramini/plugin/a/e/f$4;->c:Ljava/lang/StringBuffer;

    new-instance v2, Lcom/tramini/plugin/a/e/f$4$1;

    invoke-direct {v2, p0}, Lcom/tramini/plugin/a/e/f$4$1;-><init>(Lcom/tramini/plugin/a/e/f$4;)V

    invoke-static {p1, v0, v1, v2}, Lcom/tramini/plugin/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p1

    .line 353
    if-eqz p1, :cond_34

    .line 354
    invoke-static {p1}, Lcom/tramini/plugin/a/e/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 356
    :cond_34
    goto :goto_40

    .line 357
    :cond_35
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 327
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-object p1

    .line 359
    :catchall_3f
    move-exception p1

    .line 361
    :goto_40
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1
.end method
