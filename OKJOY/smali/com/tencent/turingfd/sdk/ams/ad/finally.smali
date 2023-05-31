.class public Lcom/tencent/turingfd/sdk/ams/ad/finally;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic Xb:Landroid/content/Context;

.field public final synthetic lc:Ljava/util/Map;

.field public final synthetic this$0:Lcom/tencent/turingfd/sdk/ams/ad/package;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/package;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/package;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->Xb:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->lc:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/package;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->Xb:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->lc:Ljava/util/Map;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
