.class public Lcom/tendcloud/tenddata/game/ab$c;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final SDT_JSON:I = 0x2

.field public static final SDT_MP:I = 0x1

.field public static final SDT_PB:I = 0x3

.field public static final SDT_UNKNOWN:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/ab;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ab;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ab$c;->this$0:Lcom/tendcloud/tenddata/game/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
