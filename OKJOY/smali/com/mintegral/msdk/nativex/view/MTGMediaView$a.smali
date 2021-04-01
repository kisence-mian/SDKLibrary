.class final enum Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
.super Ljava/lang/Enum;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

.field public static final enum b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

.field public static final enum c:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

.field public static final enum d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

.field private static final synthetic e:[Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    const-string v1, "BIG_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    const-string v1, "FB"

    invoke-direct {v0, v1, v4}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->c:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v5}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->c:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->e:[Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
