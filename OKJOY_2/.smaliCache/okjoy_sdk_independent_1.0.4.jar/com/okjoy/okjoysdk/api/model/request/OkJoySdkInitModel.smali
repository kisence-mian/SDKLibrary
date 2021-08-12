.class public Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public isAdvDebug:Z

.field public isDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdvDebug()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->isAdvDebug:Z

    return v0
.end method

.method public isDebug()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->isDebug:Z

    return v0
.end method

.method public setAdvDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->isAdvDebug:Z

    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;->isDebug:Z

    return-void
.end method
