.class public Lcom/kwad/sdk/c/b;
.super Lcom/kwad/sdk/c/c;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/c/c;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/c/b;->b:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/b;->b:Ljava/lang/String;

    return-void
.end method
