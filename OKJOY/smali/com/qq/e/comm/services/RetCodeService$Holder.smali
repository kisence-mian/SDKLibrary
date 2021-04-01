.class Lcom/qq/e/comm/services/RetCodeService$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/services/RetCodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final a:Lcom/qq/e/comm/services/RetCodeService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qq/e/comm/services/RetCodeService;-><init>(B)V

    sput-object v0, Lcom/qq/e/comm/services/RetCodeService$Holder;->a:Lcom/qq/e/comm/services/RetCodeService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
