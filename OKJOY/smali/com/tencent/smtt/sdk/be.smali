.class Lcom/tencent/smtt/sdk/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/bd;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/sdk/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserStateChanged()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/sdk/bd;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bg;->c()V

    return-void
.end method
