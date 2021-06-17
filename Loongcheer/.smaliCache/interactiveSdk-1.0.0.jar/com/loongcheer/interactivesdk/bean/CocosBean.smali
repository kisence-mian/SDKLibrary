.class public Lcom/loongcheer/interactivesdk/bean/CocosBean;
.super Ljava/lang/Object;
.source "CocosBean.java"


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

.field private theCallback:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "theCallback"    # Ljava/lang/String;
    .param p4, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->result:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->type:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->theCallback:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->identifier:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 47
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getTheCallback()Ljava/lang/String;
    .registers 2

    .line 39
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->theCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 31
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 51
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->identifier:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->result:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public setTheCallback(Ljava/lang/String;)V
    .registers 2
    .param p1, "theCallback"    # Ljava/lang/String;

    .line 43
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->theCallback:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 35
    .local p0, "this":Lcom/loongcheer/interactivesdk/bean/CocosBean;, "Lcom/loongcheer/interactivesdk/bean/CocosBean<TT;>;"
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosBean;->type:Ljava/lang/String;

    .line 36
    return-void
.end method
