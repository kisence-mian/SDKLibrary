.class public final Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean$LogGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroup;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogGroupOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2050
    # getter for: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$2900()Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 2051
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/tracker/entities/LogBean$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/tracker/entities/LogBean$1;

    .line 2043
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLogTags(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;)",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;"
        }
    .end annotation

    .line 2387
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogTag;>;"
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2388
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addAllLogTags(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/Iterable;)V

    .line 2389
    return-object p0
.end method

.method public addAllLogs(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;)",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;"
        }
    .end annotation

    .line 2130
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$Log;>;"
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2131
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addAllLogs(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/Iterable;)V

    .line 2132
    return-object p0
.end method

.method public addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 2378
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2379
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    .line 2380
    return-object p0
.end method

.method public addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 2360
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2361
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag;)V

    .line 2362
    return-object p0
.end method

.method public addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 2369
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2370
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    .line 2371
    return-object p0
.end method

.method public addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 2351
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2352
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogTags(Lcom/tds/common/tracker/entities/LogBean$LogTag;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$LogTag;)V

    .line 2353
    return-object p0
.end method

.method public addLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 2121
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2122
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    .line 2123
    return-object p0
.end method

.method public addLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 2103
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2104
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log;)V

    .line 2105
    return-object p0
.end method

.method public addLogs(Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 2112
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2113
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    .line 2114
    return-object p0
.end method

.method public addLogs(Lcom/tds/common/tracker/entities/LogBean$Log;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 2094
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2095
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->addLogs(Lcom/tds/common/tracker/entities/LogBean$Log;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/common/tracker/entities/LogBean$Log;)V

    .line 2096
    return-object p0
.end method

.method public clearCategory()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2177
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearCategory()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2179
    return-object p0
.end method

.method public clearLogTags()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2395
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2396
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearLogTags()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2397
    return-object p0
.end method

.method public clearLogs()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2138
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2139
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearLogs()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2140
    return-object p0
.end method

.method public clearMachineUUID()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2297
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2298
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearMachineUUID()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2299
    return-object p0
.end method

.method public clearSource()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2257
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2258
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearSource()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4600(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2259
    return-object p0
.end method

.method public clearTopic()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 2

    .line 2217
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2218
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->clearTopic()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4300(Lcom/tds/common/tracker/entities/LogBean$LogGroup;)V

    .line 2219
    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 2155
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 2162
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getCategoryBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogTags(I)Lcom/tds/common/tracker/entities/LogBean$LogTag;
    .registers 3
    .param p1, "index"    # I

    .line 2327
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogTags(I)Lcom/tds/common/tracker/entities/LogBean$LogTag;

    move-result-object v0

    return-object v0
.end method

.method public getLogTagsCount()I
    .registers 2

    .line 2322
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogTagsCount()I

    move-result v0

    return v0
.end method

.method public getLogTagsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogTag;",
            ">;"
        }
    .end annotation

    .line 2315
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2316
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogTagsList()Ljava/util/List;

    move-result-object v0

    .line 2315
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogs(I)Lcom/tds/common/tracker/entities/LogBean$Log;
    .registers 3
    .param p1, "index"    # I

    .line 2070
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogs(I)Lcom/tds/common/tracker/entities/LogBean$Log;

    move-result-object v0

    return-object v0
.end method

.method public getLogsCount()I
    .registers 2

    .line 2065
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogsCount()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    .line 2059
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getLogsList()Ljava/util/List;

    move-result-object v0

    .line 2058
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMachineUUID()Ljava/lang/String;
    .registers 2

    .line 2275
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getMachineUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMachineUUIDBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 2282
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getMachineUUIDBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 2235
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 2242
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getSourceBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .registers 2

    .line 2195
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicBytes()Lcom/tds/protobuf/ByteString;
    .registers 2

    .line 2202
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->getTopicBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeLogTags(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 2403
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2404
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->removeLogTags(I)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;I)V

    .line 2405
    return-object p0
.end method

.method public removeLogs(I)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 2146
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2147
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->removeLogs(I)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;I)V

    .line 2148
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2169
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2170
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setCategory(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3900(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V

    .line 2171
    return-object p0
.end method

.method public setCategoryBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 2186
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2187
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setCategoryBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V

    .line 2188
    return-object p0
.end method

.method public setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogTag$Builder;

    .line 2343
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2344
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag$Builder;)V

    .line 2345
    return-object p0
.end method

.method public setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogTag;

    .line 2334
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2335
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogTags(ILcom/tds/common/tracker/entities/LogBean$LogTag;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$LogTag;)V

    .line 2336
    return-object p0
.end method

.method public setLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    .line 2086
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2087
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogs(ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3100(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log$Builder;)V

    .line 2088
    return-object p0
.end method

.method public setLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 2077
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2078
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setLogs(ILcom/tds/common/tracker/entities/LogBean$Log;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$3000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;ILcom/tds/common/tracker/entities/LogBean$Log;)V

    .line 2079
    return-object p0
.end method

.method public setMachineUUID(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2289
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2290
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setMachineUUID(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4800(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V

    .line 2291
    return-object p0
.end method

.method public setMachineUUIDBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 2306
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2307
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setMachineUUIDBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$5000(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V

    .line 2308
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2249
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2250
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setSource(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4500(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V

    .line 2251
    return-object p0
.end method

.method public setSourceBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 2266
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2267
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setSourceBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4700(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V

    .line 2268
    return-object p0
.end method

.method public setTopic(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2209
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2210
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setTopic(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4200(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Ljava/lang/String;)V

    .line 2211
    return-object p0
.end method

.method public setTopicBytes(Lcom/tds/protobuf/ByteString;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 2226
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->copyOnWrite()V

    .line 2227
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$LogGroup;->setTopicBytes(Lcom/tds/protobuf/ByteString;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->access$4400(Lcom/tds/common/tracker/entities/LogBean$LogGroup;Lcom/tds/protobuf/ByteString;)V

    .line 2228
    return-object p0
.end method
