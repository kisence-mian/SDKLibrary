.class Lcom/tendcloud/tenddata/game/bv;
.super Ljava/lang/ThreadLocal;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/bt;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bt;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bv;->this$0:Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .registers 2

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bv;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
