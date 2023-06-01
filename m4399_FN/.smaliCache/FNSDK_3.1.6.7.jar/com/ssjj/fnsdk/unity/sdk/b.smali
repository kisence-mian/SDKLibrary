.class Lcom/ssjj/fnsdk/unity/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/unity/sdk/a;

.field private final synthetic b:Lcom/ssjj/chat/sdk/kit/ChatParam;

.field private final synthetic c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

.field private final synthetic d:Lcom/ssjj/chat/sdk/kit/ChatBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/a;Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    iput-object p2, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->b:Lcom/ssjj/chat/sdk/kit/ChatParam;

    iput-object p3, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    iput-object p4, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->d:Lcom/ssjj/chat/sdk/kit/ChatBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/b;)Lcom/ssjj/fnsdk/unity/sdk/a;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->b:Lcom/ssjj/chat/sdk/kit/ChatParam;

    new-instance v7, Lcom/ssjj/fnsdk/unity/sdk/c;

    iget-object v3, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    const-string v4, "init"

    iget-object v5, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    iget-object v6, p0, Lcom/ssjj/fnsdk/unity/sdk/b;->d:Lcom/ssjj/chat/sdk/kit/ChatBack;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/unity/sdk/c;-><init>(Lcom/ssjj/fnsdk/unity/sdk/b;Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    invoke-static {v0, v7}, Lcom/ssjj/chat/sdk/kit/ChatKit;->init(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    return-void
.end method
