.class final Lcom/anythink/core/b/d$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/anythink/core/c/c;

.field final synthetic e:Lcom/anythink/core/b/c/b;

.field final synthetic f:Lcom/anythink/core/b/d$a;

.field final synthetic g:Lcom/anythink/core/b/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d;[JZLjava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 8

    .prologue
    .line 691
    iput-object p1, p0, Lcom/anythink/core/b/d$10;->g:Lcom/anythink/core/b/d;

    iput-object p2, p0, Lcom/anythink/core/b/d$10;->a:[J

    iput-boolean p3, p0, Lcom/anythink/core/b/d$10;->b:Z

    iput-object p4, p0, Lcom/anythink/core/b/d$10;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/anythink/core/b/d$10;->d:Lcom/anythink/core/c/c;

    iput-object p6, p0, Lcom/anythink/core/b/d$10;->e:Lcom/anythink/core/b/c/b;

    iput-object p7, p0, Lcom/anythink/core/b/d$10;->f:Lcom/anythink/core/b/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v1, p0, Lcom/anythink/core/b/d$10;->g:Lcom/anythink/core/b/d;

    iget-object v0, p0, Lcom/anythink/core/b/d$10;->a:[J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iget-boolean v4, p0, Lcom/anythink/core/b/d$10;->b:Z

    iget-object v7, p0, Lcom/anythink/core/b/d$10;->c:Ljava/util/List;

    iget-object v8, p0, Lcom/anythink/core/b/d$10;->d:Lcom/anythink/core/c/c;

    iget-object v9, p0, Lcom/anythink/core/b/d$10;->e:Lcom/anythink/core/b/c/b;

    iget-object v10, p0, Lcom/anythink/core/b/d$10;->f:Lcom/anythink/core/b/d$a;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v10}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/d;JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    .line 697
    return-void
.end method
