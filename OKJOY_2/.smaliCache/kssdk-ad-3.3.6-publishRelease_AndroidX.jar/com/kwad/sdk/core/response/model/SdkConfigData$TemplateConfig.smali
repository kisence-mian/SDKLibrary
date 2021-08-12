.class public Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/SdkConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateConfig"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x605b38b14cc5611dL


# instance fields
.field public h5Checksum:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public h5Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method
