.class public Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;->message:Ljava/lang/String;

    return-object v0
.end method
