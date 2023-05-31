.class public Lcom/tencent/turingfd/sdk/ams/ad/static;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/byte;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/static$do;
    }
.end annotation


# static fields
.field public static final Cb:[B


# instance fields
.field public final Qb:Ljava/lang/String;

.field public final Rb:J

.field public final Sb:I

.field public final Ub:Ljava/lang/String;

.field public final Vb:Ljava/lang/String;

.field public final Wb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Cb:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Qb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Rb:J

    .line 4
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Ub:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Vb:Ljava/lang/String;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/static$do;)V
    .registers 4

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Qb:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Qb:Ljava/lang/String;

    .line 11
    iget-wide v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Rb:J

    .line 12
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Rb:J

    .line 13
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Sb:I

    .line 14
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    .line 15
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Tb:[B

    .line 16
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Ub:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Ub:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Vb:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Vb:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Wb:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    return-void
.end method

.method public static c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Cb:[B

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/static;-><init>(I[B)V

    return-object v0
.end method

.method public static create(I)Lcom/tencent/turingfd/sdk/ams/ad/static$do;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/static$do;-><init>(ILcom/tencent/turingfd/sdk/ams/ad/return;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->create(I)Lcom/tencent/turingfd/sdk/ams/ad/static$do;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Rb:J

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Qb:Ljava/lang/String;

    const-string v1, ""

    .line 4
    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Ub:Ljava/lang/String;

    const-string v1, ""

    .line 5
    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Vb:Ljava/lang/String;

    .line 6
    iput-object p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Wb:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->build()Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    return-object v0
.end method
