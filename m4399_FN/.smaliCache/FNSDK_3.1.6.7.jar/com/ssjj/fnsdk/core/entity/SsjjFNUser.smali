.class public Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;
.super Ljava/lang/Object;


# instance fields
.field public ext:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    return-void
.end method
