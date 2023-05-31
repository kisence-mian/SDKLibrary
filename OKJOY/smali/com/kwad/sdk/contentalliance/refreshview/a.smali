.class public Lcom/kwad/sdk/contentalliance/refreshview/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/refreshview/b;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/a;->a:F

    return-void
.end method


# virtual methods
.method public a(FF)F
    .registers 6

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/a;->a:F

    mul-float v1, v0, v0

    mul-float/2addr v1, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
