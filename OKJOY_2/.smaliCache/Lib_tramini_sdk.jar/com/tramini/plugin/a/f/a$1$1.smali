.class final Lcom/tramini/plugin/a/f/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/f/a$1;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/f/a$1;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/tramini/plugin/a/f/a$1$1;->a:Lcom/tramini/plugin/a/f/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 161
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .registers 3

    .line 165
    const/4 p2, 0x2

    if-ne p2, p1, :cond_24

    .line 166
    iget-object p2, p0, Lcom/tramini/plugin/a/f/a$1$1;->a:Lcom/tramini/plugin/a/f/a$1;

    iget-object p2, p2, Lcom/tramini/plugin/a/f/a$1;->e:Lcom/tramini/plugin/a/f/a;

    invoke-static {p2}, Lcom/tramini/plugin/a/f/a;->a(Lcom/tramini/plugin/a/f/a;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 167
    iget-object p2, p0, Lcom/tramini/plugin/a/f/a$1$1;->a:Lcom/tramini/plugin/a/f/a$1;

    iget-object p2, p2, Lcom/tramini/plugin/a/f/a$1;->e:Lcom/tramini/plugin/a/f/a;

    invoke-static {p2}, Lcom/tramini/plugin/a/f/a;->a(Lcom/tramini/plugin/a/f/a;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 169
    if-eqz p1, :cond_24

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 175
    :cond_24
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object p1

    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public final b()V
    .registers 3

    .line 180
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 181
    return-void
.end method
