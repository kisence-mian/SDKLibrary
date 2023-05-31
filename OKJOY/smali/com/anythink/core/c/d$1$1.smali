.class final Lcom/anythink/core/c/d$1$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/anythink/core/c/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d$1;JJ[Z)V
    .registers 7

    .prologue
    .line 132
    iput-object p1, p0, Lcom/anythink/core/c/d$1$1;->b:Lcom/anythink/core/c/d$1;

    iput-object p6, p0, Lcom/anythink/core/c/d$1$1;->a:[Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    .prologue
    .line 139
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "Timer onFinish\uff0cload AD by old strategy"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/anythink/core/c/d$1$1;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/anythink/core/c/d$1$1;->b:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$1;->b:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 142
    return-void
.end method

.method public final onTick(J)V
    .registers 3

    .prologue
    .line 135
    return-void
.end method
