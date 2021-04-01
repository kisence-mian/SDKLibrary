.class final Lcom/tramini/plugin/a/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/d/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
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
    .line 32
    iput-object p1, p0, Lcom/tramini/plugin/a/d/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 35
    instance-of v0, p1, Ljava/util/List;

    return v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 6

    .prologue
    .line 41
    :try_start_0
    check-cast p1, Ljava/util/List;

    .line 42
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 43
    :cond_a
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    .line 55
    :goto_e
    return-object v0

    .line 46
    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tramini/plugin/a/d/d$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 49
    invoke-static {v1}, Lcom/tramini/plugin/a/d/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_e

    .line 46
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 52
    :cond_32
    invoke-static {}, Lcom/tramini/plugin/a/d/e$a;->a()Lcom/tramini/plugin/a/d/e$a;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_e

    .line 55
    :catch_37
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method
