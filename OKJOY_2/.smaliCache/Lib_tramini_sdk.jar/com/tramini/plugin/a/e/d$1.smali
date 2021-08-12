.class final Lcom/tramini/plugin/a/e/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/e/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/e/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/tramini/plugin/a/e/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    .line 43
    instance-of p1, p1, Ljava/util/List;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;
    .registers 6

    .line 49
    :try_start_0
    check-cast p1, Ljava/util/List;

    .line 50
    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_33

    .line 54
    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tramini/plugin/a/e/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 57
    invoke-static {v1}, Lcom/tramini/plugin/a/e/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 54
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 60
    :cond_2e
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1

    return-object p1

    .line 51
    :cond_33
    :goto_33
    invoke-static {}, Lcom/tramini/plugin/a/e/e$a;->a()Lcom/tramini/plugin/a/e/e$a;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    return-object p1

    .line 61
    :catchall_38
    move-exception p1

    .line 63
    const/4 p1, 0x0

    return-object p1
.end method
