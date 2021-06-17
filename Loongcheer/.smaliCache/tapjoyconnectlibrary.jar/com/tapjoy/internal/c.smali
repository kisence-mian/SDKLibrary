.class public final Lcom/tapjoy/internal/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 19
    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/c;->a:Z

    .line 21
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/c;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/internal/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/tapjoy/internal/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 71
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/c;->a:Z

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 56
    return-void
.end method

.method public final show()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/c;->a:Z

    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 50
    return-void
.end method
