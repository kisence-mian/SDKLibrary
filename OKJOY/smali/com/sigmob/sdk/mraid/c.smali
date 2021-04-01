.class final Lcom/sigmob/sdk/mraid/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/CloseableLayout;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/mraid/CloseableLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->a:Lcom/sigmob/sdk/mraid/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/mraid/CloseableLayout;Lcom/sigmob/sdk/mraid/CloseableLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/c;-><init>(Lcom/sigmob/sdk/mraid/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->a:Lcom/sigmob/sdk/mraid/CloseableLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/CloseableLayout;Z)V

    return-void
.end method
