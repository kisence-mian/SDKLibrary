.class Lcom/ssjj/fnsdk/unity/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/unity/sdk/a;

.field private final synthetic b:Lcom/ssjj/fnsdk/unity/sdk/a$b;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/a;Lcom/ssjj/fnsdk/unity/sdk/a$b;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    iput-object p2, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->b:Lcom/ssjj/fnsdk/unity/sdk/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 6

    new-instance v0, Lcom/ssjj/chat/sdk/kit/ChatParam;

    invoke-direct {v0}, Lcom/ssjj/chat/sdk/kit/ChatParam;-><init>()V

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_e
    iget-object p3, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->b:Lcom/ssjj/fnsdk/unity/sdk/a$b;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ssjj/fnsdk/unity/sdk/a$b;->onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-static {p3}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/d;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-static {p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a()V

    return-void
.end method
