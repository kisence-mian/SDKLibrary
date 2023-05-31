.class public abstract Lcom/kwad/sdk/core/page/b;
.super Lcom/kwad/sdk/core/page/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/page/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/page/b$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    array-length v2, p3

    if-nez v2, :cond_9

    move v0, v1

    :cond_9
    array-length v3, p3

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_16

    aget v4, p3, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_13

    move v0, v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/core/page/b;->a:Lcom/kwad/sdk/core/page/b$a;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/b$a;->a()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/kwad/sdk/core/page/b;->a:Lcom/kwad/sdk/core/page/b$a;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/b$a;->b()V

    goto :goto_1f
.end method
