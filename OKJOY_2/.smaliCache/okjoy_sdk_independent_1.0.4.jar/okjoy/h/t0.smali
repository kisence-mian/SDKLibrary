.class public final Lokjoy/h/t0;
.super Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://sdk.ok-joy.com/common/?ct=info&ac=sdkContent"

    return-object v0
.end method
