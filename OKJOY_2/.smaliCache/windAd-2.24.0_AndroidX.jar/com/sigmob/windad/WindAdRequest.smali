.class public Lcom/sigmob/windad/WindAdRequest;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/WindAdRequest;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/windad/WindAdRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    const/4 p1, 0x1

    iput p1, p0, Lcom/sigmob/windad/WindAdRequest;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/windad/WindAdRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    iput p4, p0, Lcom/sigmob/windad/WindAdRequest;->a:I

    return-void
.end method


# virtual methods
.method public getAdType()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/WindAdRequest;->a:I

    return v0
.end method

.method public getLoadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->e:Ljava/util/Map;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->b:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdRequest;->c:Ljava/lang/String;

    return-void
.end method
