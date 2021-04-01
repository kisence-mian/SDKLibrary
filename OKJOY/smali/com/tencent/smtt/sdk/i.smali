.class Lcom/tencent/smtt/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/smtt/sdk/h;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/h;Z)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->b:Lcom/tencent/smtt/sdk/h;

    iput-boolean p2, p0, Lcom/tencent/smtt/sdk/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->b:Lcom/tencent/smtt/sdk/h;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/h;->c:Lcom/tencent/smtt/sdk/ValueCallback;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/i;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
