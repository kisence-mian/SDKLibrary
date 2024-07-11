.class Lcom/tendcloud/tenddata/game/cg$e;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cg;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 41
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$e;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cg$e;->key:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cg$e;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method
