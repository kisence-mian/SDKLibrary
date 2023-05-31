.class Lcom/qq/e/comm/services/RetCodeService$SendTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/services/RetCodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTask"
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

.field private b:I

.field private synthetic c:Lcom/qq/e/comm/services/RetCodeService;


# direct methods
.method constructor <init>(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/qq/e/comm/services/RetCodeService;
    .param p2, "retCode"    # Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->c:Lcom/qq/e/comm/services/RetCodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->a:Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const/16 v0, 0x64

    iput v0, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->c:Lcom/qq/e/comm/services/RetCodeService;

    iget-object v1, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->a:Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    iget v2, p0, Lcom/qq/e/comm/services/RetCodeService$SendTask;->b:I

    invoke-static {v0, v1, v2}, Lcom/qq/e/comm/services/RetCodeService;->a(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;I)V

    return-void
.end method
