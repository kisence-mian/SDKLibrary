.class public Lcom/iab/omid/library/mintegral/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/mintegral/b/a;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/mintegral/b/a;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/b/a;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/b/a;->a:Lcom/iab/omid/library/mintegral/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mintegral/b/a;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/b/a;->a:Lcom/iab/omid/library/mintegral/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 4

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/b/a;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/e;->b()V

    :cond_12
    return-void
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 4

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/b/a;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/e;->c()V

    :cond_1d
    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
