.class final Lcom/anythink/core/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b;->a(Lcom/anythink/core/common/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/b;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->d(Lcom/anythink/core/b/b;)Z

    .line 177
    iget-object v0, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->b(Lcom/anythink/core/b/b;)V

    .line 178
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v1}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/b/b;ZLjava/util/List;Z)V

    .line 167
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/b/b;ZLjava/util/List;Z)V

    .line 172
    return-void
.end method
