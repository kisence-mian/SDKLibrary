.class Lcom/tendcloud/tenddata/game/cg$d;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field fp1:Lcom/tendcloud/tenddata/game/cg$c;

.field fp2:Lcom/tendcloud/tenddata/game/cg$c;

.field score:D

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cg;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cg;Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;D)V
    .registers 6

    .line 28
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg$d;->this$0:Lcom/tendcloud/tenddata/game/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    .line 30
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    .line 31
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    .line 32
    return-void
.end method
