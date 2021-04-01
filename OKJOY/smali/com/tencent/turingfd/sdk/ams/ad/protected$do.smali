.class public Lcom/tencent/turingfd/sdk/ams/ad/protected$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "do"
.end annotation


# instance fields
.field public pc:Lcom/tencent/turingfd/sdk/ams/ad/volatile;

.field public qc:I


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/volatile;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->qc:I

    .line 3
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->pc:Lcom/tencent/turingfd/sdk/ams/ad/volatile;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/protected$do;)Lcom/tencent/turingfd/sdk/ams/ad/volatile;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->pc:Lcom/tencent/turingfd/sdk/ams/ad/volatile;

    return-object v0
.end method
