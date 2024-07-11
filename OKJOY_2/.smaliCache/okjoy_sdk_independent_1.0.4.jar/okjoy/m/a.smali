.class public final Lokjoy/m/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Ljava/util/ArrayList<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63d0\u793a\u4fe1\u606f\u63a5\u53e3\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/util/ArrayList;

    .line 1
    sput-object p1, Lokjoy/m/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->getSite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method
