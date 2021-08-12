.class public Lcom/kwad/sdk/collector/FNode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/kwad/sdk/collector/FNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FNode"

.field private static specialPath:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appRunningInfo:Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/collector/FNode;",
            ">;"
        }
    .end annotation
.end field

.field private externalFilter:Lcom/kwad/sdk/collector/NodeFilter;

.field private infoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

.field private parent:Lcom/kwad/sdk/collector/FNode;

.field private realFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kwad/sdk/collector/FNode;->specialPath:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/collector/FNode;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/collector/FNode;->infoMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/collector/FNode;->nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    iput-object p1, p0, Lcom/kwad/sdk/collector/FNode;->parent:Lcom/kwad/sdk/collector/FNode;

    iput-object p2, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    return-void
.end method

.method public static isAllMatchPath(Lcom/kwad/sdk/collector/FNode;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getNodePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    sget-object v0, Lcom/kwad/sdk/collector/FNode;->specialPath:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getNodeFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onFilterChild(Ljava/io/File;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_26

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    return v0

    :cond_1b
    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->externalFilter:Lcom/kwad/sdk/collector/NodeFilter;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Lcom/kwad/sdk/collector/NodeFilter;->onFilterChild(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_24
    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    return v0
.end method

.method private readNodeInfo()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastModified"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_29

    :cond_27
    const-wide/16 v0, -0x1

    :goto_29
    iget-object v2, p0, Lcom/kwad/sdk/collector/FNode;->infoMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fileSize"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sortChildren(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/collector/FNode;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_c
    :goto_c
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/kwad/sdk/collector/FNode;)I
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/collector/FNode;->getRealFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/kwad/sdk/collector/FNode;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/collector/FNode;->compareTo(Lcom/kwad/sdk/collector/FNode;)I

    move-result p1

    return p1
.end method

.method public dumpNode()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/collector/FNode;

    invoke-virtual {v2}, Lcom/kwad/sdk/collector/FNode;->dumpNode()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    :cond_30
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_24

    :cond_11
    check-cast p1, Lcom/kwad/sdk/collector/FNode;

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public getAppRunningInfo()Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->appRunningInfo:Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->parent:Lcom/kwad/sdk/collector/FNode;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/FNode;->getAppRunningInfo()Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/collector/FNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalFilter()Lcom/kwad/sdk/collector/NodeFilter;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->externalFilter:Lcom/kwad/sdk/collector/NodeFilter;

    return-object v0
.end method

.method public getFNodeInfo()Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    return-object v0
.end method

.method public getNodeFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeLastModifyTime()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_12
    :goto_12
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/kwad/sdk/collector/FNode;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->parent:Lcom/kwad/sdk/collector/FNode;

    return-object v0
.end method

.method public getRealFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/FNode;->parent:Lcom/kwad/sdk/collector/FNode;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nodeChange(Lcom/kwad/sdk/collector/FNode;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/kwad/sdk/collector/FNode;->getNodePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getNodePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_3e

    :cond_11
    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getNodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Lcom/kwad/sdk/collector/FNode;->getNodeLastModifyTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/kwad/sdk/collector/FNode;->getNodeLastModifyTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v0

    :goto_2c
    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p1, p1, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v1, p1, :cond_3e

    move v0, v2

    :cond_3e
    :goto_3e
    return v0
.end method

.method public readNode()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_13
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->setTotalSize(J)V

    goto :goto_57

    :cond_17
    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_22

    const-wide/16 v1, 0x0

    goto :goto_13

    :cond_22
    array-length v2, v1

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_52

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/kwad/sdk/collector/FNode;->onFilterChild(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_4f

    :cond_2f
    new-instance v5, Lcom/kwad/sdk/collector/FNode;

    invoke-direct {v5, p0, v4}, Lcom/kwad/sdk/collector/FNode;-><init>(Lcom/kwad/sdk/collector/FNode;Ljava/io/File;)V

    invoke-direct {v5}, Lcom/kwad/sdk/collector/FNode;->readNodeInfo()V

    invoke-virtual {v5}, Lcom/kwad/sdk/collector/FNode;->readNode()V

    invoke-virtual {v5}, Lcom/kwad/sdk/collector/FNode;->getFNodeInfo()Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_43

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->add(Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;)V

    :cond_43
    iget-object v4, p0, Lcom/kwad/sdk/collector/FNode;->externalFilter:Lcom/kwad/sdk/collector/NodeFilter;

    if-eqz v4, :cond_4a

    invoke-interface {v4, v5}, Lcom/kwad/sdk/collector/NodeFilter;->onChildNodeCreate(Lcom/kwad/sdk/collector/FNode;)V

    :cond_4a
    iget-object v4, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_52
    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->children:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/kwad/sdk/collector/FNode;->sortChildren(Ljava/util/List;)V

    :goto_57
    iput-object v0, p0, Lcom/kwad/sdk/collector/FNode;->nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    return-void
.end method

.method public setAppRunningInfo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/FNode;->appRunningInfo:Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    return-void
.end method

.method public setExternalFilter(Lcom/kwad/sdk/collector/NodeFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/FNode;->externalFilter:Lcom/kwad/sdk/collector/NodeFilter;

    return-void
.end method

.method public setFNodeInfo(Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/FNode;->nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FNode{realFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->realFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/collector/FNode;->nodeInfo:Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
