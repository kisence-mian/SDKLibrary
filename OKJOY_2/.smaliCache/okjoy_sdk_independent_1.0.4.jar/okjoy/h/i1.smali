.class public final Lokjoy/h/i1;
.super Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.source ""


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lokjoy/h/i1;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;
    .registers 4

    invoke-super {p0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->buildRequestParams()Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;

    move-result-object v0

    iget-object v1, p0, Lokjoy/h/i1;->a:Landroid/content/Context;

    invoke-static {v1}, Lokjoy/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    invoke-virtual {v0, v2, v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;->putParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://sdk.ok-joy.com/common/?ct=user&ac=openLogin"

    return-object v0
.end method
