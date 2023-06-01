.class Lcom/m4399/m4399SDK$5;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK;->ExitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m4399/m4399SDK;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/m4399/m4399SDK;

    .line 764
    iput-object p1, p0, Lcom/m4399/m4399SDK$5;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 772
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 773
    return-void
.end method
