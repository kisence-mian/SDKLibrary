.class public final Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogGroupListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupList;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2801
    # getter for: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroupList;
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6100()Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 2802
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/tracker/entities/LogBean$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/tracker/entities/LogBean$1;

    .line 2794
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLogGroups(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;)",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;"
        }
    .end annotation

    .line 2881
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogGroup;>;"
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2882
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addAllLogGroups(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6800(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Ljava/lang/Iterable;)V

    .line 2883
    return-object p0
.end method

.method public addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2872
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2873
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6700(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    .line 2874
    return-object p0
.end method

.method public addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2854
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2855
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6500(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2856
    return-object p0
.end method

.method public addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 3
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2863
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2864
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6600(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    .line 2865
    return-object p0
.end method

.method public addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2845
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2846
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->addLogGroups(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6400(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2847
    return-object p0
.end method

.method public clearLogGroups()Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 2

    .line 2889
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2890
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->clearLogGroups()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6900(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;)V

    .line 2891
    return-object p0
.end method

.method public getLogGroups(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 3
    .param p1, "index"    # I

    .line 2821
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-virtual {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->getLogGroups(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLogGroupsCount()I
    .registers 2

    .line 2816
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->getLogGroupsCount()I

    move-result v0

    return v0
.end method

.method public getLogGroupsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
            ">;"
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    .line 2810
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->getLogGroupsList()Ljava/util/List;

    move-result-object v0

    .line 2809
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLogGroups(I)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 2897
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2898
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->removeLogGroups(I)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$7000(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;I)V

    .line 2899
    return-object p0
.end method

.method public setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 2837
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2838
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6300(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;)V

    .line 2839
    return-object p0
.end method

.method public setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2828
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->copyOnWrite()V

    .line 2829
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->setLogGroups(ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroupList;->access$6200(Lcom/tds/common/tracker/entities/LogBean$LogGroupList;ILcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2830
    return-object p0
.end method
