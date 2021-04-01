.class final Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$b;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)Ljava/lang/Float;
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;Ljava/lang/Float;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;F)F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$b;->a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$b;->a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;Ljava/lang/Float;)V

    return-void
.end method
