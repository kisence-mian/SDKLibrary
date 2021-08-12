.class public Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileGuideConfig"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x293bd4d10b2f3383L


# instance fields
.field public appearTime:J

.field public showCount:I

.field public showInterval:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->appearTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->showInterval:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->showCount:I

    return-void
.end method
