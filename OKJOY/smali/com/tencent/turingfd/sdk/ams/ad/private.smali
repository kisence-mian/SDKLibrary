.class public final Lcom/tencent/turingfd/sdk/ams/ad/private;
.super Lcom/tencent/turingfd/sdk/ams/ad/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/continue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/turingfd/sdk/ams/ad/break",
        "<",
        "Lcom/tencent/turingfd/sdk/ams/ad/continue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/break;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/continue;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/continue;-><init>()V

    return-object v0
.end method
