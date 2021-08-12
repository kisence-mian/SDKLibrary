.class public final Lokjoy/h/l0;
.super Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.source ""


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iput-object p2, p0, Lokjoy/h/l0;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/h/l0;->b:Ljava/lang/String;

    iput-object p4, p0, Lokjoy/h/l0;->c:Ljava/lang/String;

    iput-object p5, p0, Lokjoy/h/l0;->d:Ljava/lang/String;

    iput-object p6, p0, Lokjoy/h/l0;->e:Ljava/lang/String;

    iput-object p7, p0, Lokjoy/h/l0;->f:Ljava/lang/String;

    iput-object p8, p0, Lokjoy/h/l0;->g:Ljava/lang/String;

    iput-object p9, p0, Lokjoy/h/l0;->h:Ljava/lang/String;

    iput-object p10, p0, Lokjoy/h/l0;->i:Ljava/lang/String;

    iput-object p11, p0, Lokjoy/h/l0;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 4

    invoke-super {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v0

    iget-object v1, p0, Lokjoy/h/l0;->a:Ljava/lang/String;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->b:Ljava/lang/String;

    const-string v2, "productid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->c:Ljava/lang/String;

    const-string v2, "paytype"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->d:Ljava/lang/String;

    const-string v2, "gamecno"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->e:Ljava/lang/String;

    const-string v2, "roleid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->f:Ljava/lang/String;

    const-string v2, "rolename"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->g:Ljava/lang/String;

    const-string v2, "serverid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->h:Ljava/lang/String;

    const-string v2, "servername"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->i:Ljava/lang/String;

    const-string v2, "rolelevel"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lokjoy/h/l0;->j:Ljava/lang/String;

    const-string v2, "extradata"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://sdk.ok-joy.com/common/?ct=pay&ac=order"

    return-object v0
.end method
