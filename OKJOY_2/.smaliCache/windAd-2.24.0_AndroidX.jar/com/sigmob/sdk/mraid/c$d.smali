.class Lcom/sigmob/sdk/mraid/c$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/c$d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/mraid/c$d$a;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c$d;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$d;->b:Lcom/sigmob/sdk/mraid/c$d$a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c$d$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c$d;->b:Lcom/sigmob/sdk/mraid/c$d$a;

    :cond_a
    return-void
.end method
