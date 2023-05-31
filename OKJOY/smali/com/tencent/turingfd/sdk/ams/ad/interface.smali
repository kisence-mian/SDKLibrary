.class public final Lcom/tencent/turingfd/sdk/ams/ad/interface;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic Fc:Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

.field public final synthetic Xb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/protected$do;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/interface;->Fc:Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/interface;->Xb:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/interface;->Fc:Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->pc:Lcom/tencent/turingfd/sdk/ams/ad/volatile;

    .line 3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/interface;->Xb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/volatile;->a(Landroid/content/Context;)V

    return-void
.end method
