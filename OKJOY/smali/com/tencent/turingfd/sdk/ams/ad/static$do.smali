.class public final Lcom/tencent/turingfd/sdk/ams/ad/static$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public Qb:Ljava/lang/String;

.field public Rb:J

.field public Sb:I

.field public Tb:[B

.field public Ub:Ljava/lang/String;

.field public Vb:Ljava/lang/String;

.field public Wb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/tencent/turingfd/sdk/ams/ad/return;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Sb:I

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 2

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/static;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/static$do;)V

    return-object v0
.end method
