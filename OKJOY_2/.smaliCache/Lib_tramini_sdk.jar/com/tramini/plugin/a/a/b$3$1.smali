.class final Lcom/tramini/plugin/a/a/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/a/b$3;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b$3;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$3$1;->a:Lcom/tramini/plugin/a/a/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/b/a;)V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$3$1;->a:Lcom/tramini/plugin/a/a/b$3;

    iget-object v0, v0, Lcom/tramini/plugin/a/a/b$3;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0, p1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V

    .line 226
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$3$1;->a:Lcom/tramini/plugin/a/a/b$3;

    iget-object v0, v0, Lcom/tramini/plugin/a/a/b$3;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/c;->a()V

    .line 229
    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->m()Ljava/util/Set;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$3$1;->a:Lcom/tramini/plugin/a/a/b$3;

    iget-object v1, v1, Lcom/tramini/plugin/a/a/b$3;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tramini/plugin/a/c;->a(Lcom/tramini/plugin/b/a;Ljava/util/Set;)V

    .line 232
    return-void
.end method
