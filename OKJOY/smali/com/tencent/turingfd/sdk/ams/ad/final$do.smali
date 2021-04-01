.class public Lcom/tencent/turingfd/sdk/ams/ad/final$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "do"
.end annotation


# instance fields
.field public final match:Z

.field public final ub:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->match:Z

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/final$do;->ub:Ljava/lang/String;

    return-void
.end method
