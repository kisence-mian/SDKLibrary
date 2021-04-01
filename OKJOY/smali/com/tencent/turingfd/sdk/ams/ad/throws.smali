.class public Lcom/tencent/turingfd/sdk/ams/ad/throws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic Xb:Landroid/content/Context;

.field public final synthetic Yb:Z

.field public final synthetic this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->Xb:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->Yb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->Xb:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/throws;->Yb:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;Z)V

    return-void
.end method
