.class public Lcom/sigmob/sdk/common/f/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/n$a;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/n$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->b:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->d:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/n$a;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/n$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->b:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->d:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/n$a;->e:Ljava/util/List;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-object p1, p0, Lcom/sigmob/sdk/common/f/n$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/sigmob/sdk/common/f/n$a;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/n$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/common/f/n$a;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/n$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    iget-object v1, p0, Lcom/sigmob/sdk/common/f/n$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iget-object v1, p0, Lcom/sigmob/sdk/common/f/n$a;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/sigmob/sdk/common/f/n$a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/common/f/n;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/sdk/common/f/n$a;->f:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_20
    iget-object v1, p0, Lcom/sigmob/sdk/common/f/n$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/common/f/n$a;->g:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_30
    iget-object v2, p0, Lcom/sigmob/sdk/common/f/n$a;->a:Ljava/lang/Object;

    goto :goto_2b
.end method
