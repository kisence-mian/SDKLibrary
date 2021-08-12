.class interface abstract Lcom/kwad/sdk/api/core/fragment/FileProvider$PathStrategy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/core/fragment/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PathStrategy"
.end annotation


# virtual methods
.method public abstract getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method
