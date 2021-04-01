.class public final Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public l:Landroid/content/Context;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/else;)V
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->m:Ljava/lang/String;

    const/16 v0, 0xbb8

    .line 3
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->n:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->o:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->s:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->t:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->u:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->v:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->l:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final build()Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;Lcom/tencent/turingfd/sdk/ams/ad/else;)V

    return-object v0
.end method

.method public final clientBuildNo(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->u:I

    return-object p0
.end method

.method public final clientChannel(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final clientLc(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final clientVersion(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final retryTime(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 4

    .prologue
    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ge p1, v1, :cond_c

    :goto_5
    if-le v1, v0, :cond_a

    .line 1
    :goto_7
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->o:I

    return-object p0

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_c
    move v1, p1

    goto :goto_5
.end method

.method public final timeout(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 4

    .prologue
    const/16 v0, 0x2710

    const/16 v1, 0x1f4

    if-ge p1, v1, :cond_d

    :goto_6
    if-le v1, v0, :cond_b

    .line 1
    :goto_8
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->n:I

    return-object p0

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_d
    move v1, p1

    goto :goto_6
.end method

.method public final userId(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDConfig$Builder;->m:Ljava/lang/String;

    return-object p0
.end method
