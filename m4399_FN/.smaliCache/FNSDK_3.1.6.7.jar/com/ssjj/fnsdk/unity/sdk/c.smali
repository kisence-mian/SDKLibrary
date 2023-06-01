.class Lcom/ssjj/fnsdk/unity/sdk/c;
.super Lcom/ssjj/fnsdk/unity/sdk/a$b;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/unity/sdk/b;

.field private final synthetic c:Lcom/ssjj/chat/sdk/kit/ChatBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/b;Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->a:Lcom/ssjj/fnsdk/unity/sdk/b;

    iput-object p5, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->c:Lcom/ssjj/chat/sdk/kit/ChatBack;

    invoke-direct {p0, p2, p3, p4}, Lcom/ssjj/fnsdk/unity/sdk/a$b;-><init>(Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method


# virtual methods
.method public onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->c:Lcom/ssjj/chat/sdk/kit/ChatBack;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/chat/sdk/kit/ChatBack;->onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->a:Lcom/ssjj/fnsdk/unity/sdk/b;

    invoke-static {v0}, Lcom/ssjj/fnsdk/unity/sdk/b;->a(Lcom/ssjj/fnsdk/unity/sdk/b;)Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->a:Lcom/ssjj/fnsdk/unity/sdk/b;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/b;->a(Lcom/ssjj/fnsdk/unity/sdk/b;)Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->a:Lcom/ssjj/fnsdk/unity/sdk/b;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/b;->a(Lcom/ssjj/fnsdk/unity/sdk/b;)Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/c;->a:Lcom/ssjj/fnsdk/unity/sdk/b;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/b;->a(Lcom/ssjj/fnsdk/unity/sdk/b;)Lcom/ssjj/fnsdk/unity/sdk/a;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a()V

    return-void
.end method
