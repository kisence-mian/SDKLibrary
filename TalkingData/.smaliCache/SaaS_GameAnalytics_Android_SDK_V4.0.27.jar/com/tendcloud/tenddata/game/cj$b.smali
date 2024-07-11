.class Lcom/tendcloud/tenddata/game/cj$b;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cj;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/cj;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 37
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cj$b;->this$0:Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cj$b;->key:Ljava/lang/Object;

    .line 39
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cj$b;->value:Ljava/lang/Object;

    .line 40
    return-void
.end method
