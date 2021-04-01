.class public Lcom/tencent/turingfd/sdk/ams/ad/switch;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/switch;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x1388

    .line 1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_13

    .line 2
    :goto_5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/switch;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Lcom/tencent/turingfd/sdk/ams/ad/case;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    return-void

    :catch_13
    move-exception v0

    goto :goto_5
.end method
