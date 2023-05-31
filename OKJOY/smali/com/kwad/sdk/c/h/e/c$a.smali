.class Lcom/kwad/sdk/c/h/e/c$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/h/e/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/c$a;->a:Lcom/kwad/sdk/c/h/e/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c$a;->a:Lcom/kwad/sdk/c/h/e/c;

    new-instance v1, Lcom/kwad/sdk/c/h/e/c$a$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/h/e/c$a$a;-><init>(Lcom/kwad/sdk/c/h/e/c$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
