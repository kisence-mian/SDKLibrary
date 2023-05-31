.class public Lcom/tencent/turingfd/sdk/ams/ad/this$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final data:[B

.field public final kb:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->kb:I

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->data:[B

    return-void
.end method

.method public static a(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;
    .registers 3

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/this$do;

    invoke-direct {v0, p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/this$do;-><init>(I[B)V

    return-object v0
.end method
