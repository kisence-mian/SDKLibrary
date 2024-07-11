.class Lcom/tendcloud/tenddata/game/cj$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public fp1:Lcom/tendcloud/tenddata/game/ci;

.field public fp2:Lcom/tendcloud/tenddata/game/ci;

.field public score:D

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cj;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/cj;Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;D)V
    .registers 6

    .line 27
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cj$a;->this$0:Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    .line 29
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    .line 30
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    .line 31
    return-void
.end method
