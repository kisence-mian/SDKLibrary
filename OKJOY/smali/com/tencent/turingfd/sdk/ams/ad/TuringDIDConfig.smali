.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;
.super Lcom/tencent/turingfd/sdk/ams/ad/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;Lcom/tencent/turingfd/sdk/ams/ad/else;)V
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/case;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->l:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->l:Landroid/content/Context;

    .line 4
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->m:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->m:Ljava/lang/String;

    .line 6
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->n:I

    .line 7
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->n:I

    .line 8
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->o:I

    .line 9
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->o:I

    .line 10
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->t:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->t:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->s:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->s:Ljava/lang/String;

    .line 14
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->u:I

    .line 15
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->u:I

    .line 16
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->v:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/case;->v:Ljava/lang/String;

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;-><init>(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/else;)V

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->build()Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;-><init>(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/else;)V

    return-object v0
.end method
