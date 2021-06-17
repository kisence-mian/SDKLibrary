.class final Lcom/tapjoy/internal/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ab$a;->c:I

    .line 154
    iput-object p1, p0, Lcom/tapjoy/internal/ab$a;->a:Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/tapjoy/internal/ab$a;->b:I

    .line 156
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 160
    iget v0, p0, Lcom/tapjoy/internal/ab$a;->c:I

    iget v1, p0, Lcom/tapjoy/internal/ab$a;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .line 148
    nop

    .line 1165
    iget-object v0, p0, Lcom/tapjoy/internal/ab$a;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tapjoy/internal/ab$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/ab$a;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public final remove()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/ab$a;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tapjoy/internal/ab$a;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 171
    return-void
.end method
