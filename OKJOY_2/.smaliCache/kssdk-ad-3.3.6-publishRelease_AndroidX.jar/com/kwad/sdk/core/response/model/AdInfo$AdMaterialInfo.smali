.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdMaterialInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ab276e39425d86cL


# instance fields
.field public materialFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;",
            ">;"
        }
    .end annotation
.end field

.field public materialType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;->materialFeatureList:Ljava/util/List;

    return-void
.end method
