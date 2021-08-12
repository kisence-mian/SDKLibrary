.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeListModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeListModel;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public setTypeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeListModel;->typeList:Ljava/util/List;

    return-void
.end method
