.class Lcom/ssjj/fnsdk/core/share/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/FNShare;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/b;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/b;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/b;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/share/FNShare;->b(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V

    return-void
.end method
