.class public Lcom/loongcheer/interactivesdk/bean/ResultBean;
.super Ljava/lang/Object;
.source "ResultBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/ResultBean;, "Lcom/loongcheer/interactivesdk/bean/ResultBean<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->identifier:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->result:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 19
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/ResultBean;, "Lcom/loongcheer/interactivesdk/bean/ResultBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/ResultBean;, "Lcom/loongcheer/interactivesdk/bean/ResultBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 23
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/ResultBean;, "Lcom/loongcheer/interactivesdk/bean/ResultBean<TT;>;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->identifier:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/ResultBean;, "Lcom/loongcheer/interactivesdk/bean/ResultBean<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/ResultBean;->result:Ljava/lang/Object;

    .line 16
    return-void
.end method
