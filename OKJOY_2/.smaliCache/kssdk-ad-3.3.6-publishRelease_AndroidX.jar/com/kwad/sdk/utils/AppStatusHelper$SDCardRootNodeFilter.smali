.class public Lcom/kwad/sdk/utils/AppStatusHelper$SDCardRootNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/collector/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardRootNodeFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildNodeCreate(Lcom/kwad/sdk/collector/FNode;)V
    .registers 3

    invoke-virtual {p1}, Lcom/kwad/sdk/collector/FNode;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/collector/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->createInstance(Ljava/lang/String;)Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/collector/FNode;->setAppRunningInfo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)V

    return-void
.end method

.method public onFilterChild(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/collector/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
