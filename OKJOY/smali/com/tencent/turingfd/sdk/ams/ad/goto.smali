.class public final Lcom/tencent/turingfd/sdk/ams/ad/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService;->a(Lcom/tencent/turingfd/sdk/ams/ad/byte;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic F:Lcom/tencent/turingfd/sdk/ams/ad/byte;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/byte;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/goto;->F:Lcom/tencent/turingfd/sdk/ams/ad/byte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAIDTicket()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/goto;->F:Lcom/tencent/turingfd/sdk/ams/ad/byte;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/goto;->F:Lcom/tencent/turingfd/sdk/ams/ad/byte;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 2
    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    return v0
.end method

.method public getExpiredTimestamp()J
    .registers 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/goto;->F:Lcom/tencent/turingfd/sdk/ams/ad/byte;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 2
    iget-wide v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Rb:J

    return-wide v0
.end method

.method public getTAID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/goto;->F:Lcom/tencent/turingfd/sdk/ams/ad/byte;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Ub:Ljava/lang/String;

    return-object v0
.end method
