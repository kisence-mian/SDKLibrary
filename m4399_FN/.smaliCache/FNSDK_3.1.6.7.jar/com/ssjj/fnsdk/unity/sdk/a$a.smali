.class Lcom/ssjj/fnsdk/unity/sdk/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/unity/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field private b:Lcom/ssjj/chat/sdk/kit/ChatBack;

.field private c:Lcom/ssjj/chat/sdk/kit/ChatParam;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x63

    iput v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->b:Lcom/ssjj/chat/sdk/kit/ChatBack;

    iput-object v1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->c:Lcom/ssjj/chat/sdk/kit/ChatParam;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->d:Ljava/lang/String;

    iput v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/a$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/sdk/a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/a$a;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Lcom/ssjj/chat/sdk/kit/ChatParam;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->c:Lcom/ssjj/chat/sdk/kit/ChatParam;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->b:Lcom/ssjj/chat/sdk/kit/ChatBack;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->e:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->c:Lcom/ssjj/chat/sdk/kit/ChatParam;

    invoke-interface {v0, v1, v2, v3}, Lcom/ssjj/chat/sdk/kit/ChatBack;->onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    :cond_d
    return-void
.end method

.method public a(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V
    .registers 3

    iput-object p2, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->b:Lcom/ssjj/chat/sdk/kit/ChatBack;

    iget p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a$a;->e:I

    const/16 p2, -0x63

    if-eq p1, p2, :cond_b

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a()V

    :cond_b
    return-void
.end method
