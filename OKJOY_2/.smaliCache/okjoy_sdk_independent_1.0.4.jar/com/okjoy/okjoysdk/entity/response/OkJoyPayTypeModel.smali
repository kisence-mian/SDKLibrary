.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayTypeModel;->type:Ljava/lang/String;

    return-void
.end method
