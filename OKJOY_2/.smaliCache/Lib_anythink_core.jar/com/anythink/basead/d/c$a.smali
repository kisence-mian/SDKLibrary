.class final Lcom/anythink/basead/d/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/c;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/c;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/anythink/basead/d/c$a;->a:Lcom/anythink/basead/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/d/c$a;->b:Ljava/util/ArrayList;

    .line 174
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 178
    iget-object v0, p0, Lcom/anythink/basead/d/c$a;->a:Lcom/anythink/basead/d/c;

    invoke-static {v0}, Lcom/anythink/basead/d/c;->b(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/d/d;

    .line 183
    iget-wide v3, v1, Lcom/anythink/basead/d/d;->b:J

    iget-object v5, v1, Lcom/anythink/basead/d/d;->a:Ljava/lang/Object;

    check-cast v5, Lcom/anythink/basead/d/b;

    .line 185
    invoke-interface {v5}, Lcom/anythink/basead/d/b;->c()I

    move-result v5

    .line 183
    nop

    .line 1311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    int-to-long v3, v5

    cmp-long v3, v6, v3

    if-ltz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    .line 183
    :goto_3e
    if-eqz v3, :cond_e

    .line 189
    iget-object v3, v1, Lcom/anythink/basead/d/d;->a:Ljava/lang/Object;

    check-cast v3, Lcom/anythink/basead/d/b;

    invoke-interface {v3}, Lcom/anythink/basead/d/b;->a()V

    .line 190
    iget-object v1, v1, Lcom/anythink/basead/d/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/anythink/basead/d/b;

    invoke-interface {v1}, Lcom/anythink/basead/d/b;->f()V

    .line 193
    iget-object v1, p0, Lcom/anythink/basead/d/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_e

    .line 196
    :cond_54
    iget-object v0, p0, Lcom/anythink/basead/d/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 197
    iget-object v2, p0, Lcom/anythink/basead/d/c$a;->a:Lcom/anythink/basead/d/c;

    invoke-virtual {v2, v1}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;)V

    .line 198
    goto :goto_5a

    .line 199
    :cond_6c
    iget-object v0, p0, Lcom/anythink/basead/d/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v0, p0, Lcom/anythink/basead/d/c$a;->a:Lcom/anythink/basead/d/c;

    invoke-static {v0}, Lcom/anythink/basead/d/c;->b(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_82

    .line 202
    iget-object v0, p0, Lcom/anythink/basead/d/c$a;->a:Lcom/anythink/basead/d/c;

    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->c()V

    .line 204
    :cond_82
    return-void
.end method
