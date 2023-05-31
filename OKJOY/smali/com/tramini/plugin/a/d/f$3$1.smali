.class final Lcom/tramini/plugin/a/d/f$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/d/f$3;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/d/f$3;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/d/f$3;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tramini/plugin/a/d/f$3$1;->a:Lcom/tramini/plugin/a/d/f$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/d/f$3$1;->a:Lcom/tramini/plugin/a/d/f$3;

    iget-object v1, v1, Lcom/tramini/plugin/a/d/f$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;
    .registers 4

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/d/f$3$1;->a:Lcom/tramini/plugin/a/d/f$3;

    iget-object v1, v1, Lcom/tramini/plugin/a/d/f$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 308
    invoke-static {p1}, Lcom/tramini/plugin/a/d/e$a;->a(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    .line 310
    :goto_16
    return-object v0

    :cond_17
    invoke-static {p1}, Lcom/tramini/plugin/a/d/e$a;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v0

    goto :goto_16
.end method
