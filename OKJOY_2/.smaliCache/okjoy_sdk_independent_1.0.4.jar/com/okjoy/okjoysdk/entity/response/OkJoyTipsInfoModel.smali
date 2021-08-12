.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public content:Ljava/lang/String;

.field public site:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->site:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;->site:Ljava/lang/String;

    return-void
.end method
