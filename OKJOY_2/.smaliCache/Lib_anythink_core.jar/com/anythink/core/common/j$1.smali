.class final Lcom/anythink/core/common/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/j;->a(Lcom/anythink/core/common/d/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/a;

.field final synthetic b:Lcom/anythink/core/common/j;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/j;Lcom/anythink/core/c/a;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/anythink/core/common/j$1;->b:Lcom/anythink/core/common/j;

    iput-object p2, p0, Lcom/anythink/core/common/j$1;->a:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 51
    iget-object v0, p0, Lcom/anythink/core/common/j$1;->b:Lcom/anythink/core/common/j;

    new-instance v7, Lcom/anythink/core/common/j$1$1;

    iget-object v1, p0, Lcom/anythink/core/common/j$1;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->K()J

    move-result-wide v3

    iget-object v1, p0, Lcom/anythink/core/common/j$1;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->K()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/j$1$1;-><init>(Lcom/anythink/core/common/j$1;JJ)V

    iput-object v7, v0, Lcom/anythink/core/common/j;->b:Landroid/os/CountDownTimer;

    .line 62
    iget-object v0, p0, Lcom/anythink/core/common/j$1;->b:Lcom/anythink/core/common/j;

    iget-object v0, v0, Lcom/anythink/core/common/j;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 63
    return-void
.end method
