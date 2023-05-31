.class public Lcom/mintegral/msdk/out/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaigns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/out/Frame;->b:Ljava/util/List;

    return-object v0
.end method

.method public getParentSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/out/Frame;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/out/Frame;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/mintegral/msdk/out/Frame;->a:I

    return v0
.end method

.method public setCampaigns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/out/Frame;->b:Ljava/util/List;

    .line 24
    return-void
.end method

.method public setParentSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/out/Frame;->d:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mintegral/msdk/out/Frame;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTemplate(I)V
    .registers 2

    .prologue
    .line 17
    iput p1, p0, Lcom/mintegral/msdk/out/Frame;->a:I

    .line 18
    return-void
.end method
