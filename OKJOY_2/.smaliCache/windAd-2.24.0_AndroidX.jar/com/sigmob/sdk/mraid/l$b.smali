.class Lcom/sigmob/sdk/mraid/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/mraid/l$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/l$b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/mraid/l;->a()V

    return-void
.end method
