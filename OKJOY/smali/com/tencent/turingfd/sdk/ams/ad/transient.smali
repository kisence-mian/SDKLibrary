.class public Lcom/tencent/turingfd/sdk/ams/ad/transient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Sb:I

.field public uc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->uc:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->Sb:I

    return-void
.end method

.method public static c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/transient;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
