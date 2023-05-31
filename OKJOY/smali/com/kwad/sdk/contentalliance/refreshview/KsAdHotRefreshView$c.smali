.class Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/refreshview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->b()Lcom/kwad/sdk/contentalliance/refreshview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .registers 6

    invoke-static {}, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;->d()F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    add-float/2addr v1, p1

    const v2, 0x479c4000    # 80000.0f

    div-float v1, v2, v1

    const/high16 v2, 0x43480000    # 200.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
